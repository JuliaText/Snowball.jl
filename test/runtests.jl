using Snowball
using Test

@testset "Snowball.jl" begin

    algs = stemmer_types()
    @test !isempty(algs)
    @test length(algs) >= 26
    @test "english" in algs

    for alg in algs
        stmr = Stemmer(alg)
        @test stmr.cptr != C_NULL
        Snowball.release(stmr)
    end

    test_cases = Dict{String, Any}(
        "english" => Dict{AbstractString, AbstractString}(
            "working" => "work",
            "worker" => "worker",
            "aβc" => "aβc",
            "a∀c" => "a∀c",
            "fishes" => "fish",
            "fishing" => "fish",
            "fish" => "fish",
            "fisher" => "fisher",
        )
    )

    for (alg, test_words) in test_cases
        stmr = Stemmer(alg)
        for (n,v) in test_words
            @test v == stem(stmr, n)
        end
    end
    stmr = Stemmer("english")
    @test  stem_all(stmr, "The fisher is fishing the fishes") == "The fisher is fish the fish"

    @test stem(stmr, [ "The", "fishers", "are", "fishing", "the", "fishes"]) ==
        [ "The", "fisher", "are", "fish", "the", "fish"]
end

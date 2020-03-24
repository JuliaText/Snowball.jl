using Documenter, Snowball

makedocs(;
    modules=[Snowball],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/juliatext/Snowball.jl/blob/{commit}{path}#L{line}",
    sitename="Snowball.jl",
    authors="Avik Sengupta, Julia Computing",
    assets=String[],
)

deploydocs(;
    repo="github.com/JuliaText/Snowball.jl",
)

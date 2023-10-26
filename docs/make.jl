using Documenter, Snowball

makedocs(;
    modules=[Snowball],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    sitename="Snowball.jl",
    authors="Avik Sengupta, Julia Computing",
)

deploydocs(;
    repo="github.com/JuliaText/Snowball.jl",
)

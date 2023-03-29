using ElasticFormulae
using Documenter

DocMeta.setdocmeta!(ElasticFormulae, :DocTestSetup, :(using ElasticFormulae); recursive=true)

makedocs(;
    modules=[ElasticFormulae],
    authors="singularitti <singularitti@outlook.com> and contributors",
    repo="https://github.com/singularitti/ElasticFormulae.jl/blob/{commit}{path}#{line}",
    sitename="ElasticFormulae.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://singularitti.github.io/ElasticFormulae.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/singularitti/ElasticFormulae.jl",
    devbranch="main",
)

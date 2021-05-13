using Documenter, Krylov

makedocs(
  modules = [Krylov],
  doctest = true,
  linkcheck = true,
  strict = false,
  format = Documenter.HTML(assets = ["assets/style.css"], prettyurls = get(ENV, "CI", nothing) == "true"),
  sitename = "Krylov.jl",
  pages = ["Home" => "index.md",
           "API" => "api.md",
           "Krylov methods" => ["Symmetric positive definite linear systems" => "solvers/spd.md",
                                "Symmetric indefinite linear systems" => "solvers/sid.md",
                                "Unsymmetric linear systems" => "solvers/unsymmetric.md",
                                "Least-norm problems" => "solvers/ln.md",
                                "Least-squares problems" => "solvers/ls.md",
                                "Adjoint systems" => "solvers/as.md",
                                "Saddle-point and symmetric quasi-definite systems" => "solvers/sp_sqd.md"],
           "GPU" => "gpu.md",
           "Matrix-free operators" => "matrix-free.md",
           "Reference" => "reference.md",
          ]
)

deploydocs(repo = "github.com/JuliaSmoothOptimizers/Krylov.jl.git")

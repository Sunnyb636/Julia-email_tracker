
(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir
import Pkg
Pkg.activate(".")
using Backendmessaging
push!(Base.modules_warned_for, Base.PkgId(Backendmessaging))
Backendmessaging.main()

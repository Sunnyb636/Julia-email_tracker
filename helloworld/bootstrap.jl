(pwd() != @__DIR__) && cd(@__DIR__) # allow starting app from bin/ dir

using Helloworld
push!(Base.modules_warned_for, Base.PkgId(Helloworld))
Helloworld.main()

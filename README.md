# TwoBasedIndexing

[![Build Status](https://travis-ci.org/simonster/TwoBasedIndexing.jl.svg?branch=master)](https://travis-ci.org/simonster/TwoBasedIndexing.jl)

This package implements two-based indexing in Julia. It requires a version of Julia that includes [#13260](https://github.com/JuliaLang/julia/pull/13260) if you want to use two-based indexing at the REPL.

## Usage

```julia
julia> using TwoBasedIndexing

julia> twobased() # enable two-based indexing in current module

julia> x = [1,2,3]
3-element Array{Int64,1}:
 1
 2
 3

julia> for i = 2:4 println(x[i]) end
1
2
3

julia> x[2] = 2
2

julia> x
3-element Array{Int64,1}:
 2
 2
 3
```

## TODO

-  Rewrite BoundsErrors

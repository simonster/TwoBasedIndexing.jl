# TwoBasedIndexing

[![Build Status](https://travis-ci.org/simonster/TwoBasedIndexing.jl.svg?branch=master)](https://travis-ci.org/simonster/TwoBasedIndexing.jl)

This package implements two-based indexing in Julia. Two-based indexing affects only your code. Functions from other packages/modules will still function properly, but when you index into the arrays they return, the indices will start at 2 instead of 1. This makes it easy to gradually transition your codebase from obsolete one-based indexing to proper two-based indexing.

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

-  Don't rewrite non-numeric indexes or numeric indexes into Associatives
-  Rewrite BoundsErrors

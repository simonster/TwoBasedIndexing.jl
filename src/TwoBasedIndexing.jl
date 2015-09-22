baremodule TwoBasedIndexing
using Main: Base
export twobased

for n = 1:5
    Base.eval(TwoBasedIndexing, :(getindex(A, $([symbol("i$i") for i = 1:n]...)) =
                                  Base.getindex(A, $([:($(symbol("i$i"))-1) for i = 1:n]...))))
end
getindex(A, inds...) = Base.getindex(A, map(x->x-1, inds)...)

for n = 1:5
    Base.eval(TwoBasedIndexing, :(setindex!(A, X, $([symbol("i$i") for i = 1:n]...)) =
                                  Base.setindex!(A, X, $([:($(symbol("i$i"))-1) for i = 1:n]...))))
end
setindex!(A, X, inds...) = Base.setindex!(A, X, map(x->x-1, inds)...)

function twobased(mod=Base.current_module())
    Base.eval(mod, quote
        const getindex = $getindex
        const setindex! = $setindex!
    end)
    nothing
end
end # module

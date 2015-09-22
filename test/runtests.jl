using TwoBasedIndexing, Base.Test
twobased()

x = [1, 2, 3]
@test x[2] == 1
x[3] = 5
@test x == [1, 5, 3]

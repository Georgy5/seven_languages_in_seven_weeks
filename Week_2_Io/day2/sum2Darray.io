uno := list(1, 2, 3)
dos := list(4, 5, 6)
ary2d := list(uno, dos)

sum2Darray := method(
  ((ary2d pop) sum) + ((ary2d pop) sum)
)

sum2Darray println

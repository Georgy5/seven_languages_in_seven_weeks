#Calculate sum of two-dimensional array
sumTwoDimensional := method(arr,
  arr reduce(sum, row, sum + row reduce(rowSum, next, rowSum + next, 0), 0)
)

sum2Darray := method(ary2d,
  ary2d flatten sum
)

List myFlatten := method(
  reduce(sum, row, sum + if(row isKindOf(List), row myFlatten, row), 0)
)

sumTwoDimensional(list(
  list(1, 2, 3), 
  list(4, 5, 6),
  list(7, 8, 9)
)) println

sum2Darray(list(
  list(1, 2, 3), 
  list(4, 5, 6),
  list(7, 8, 9)
)) println

(list(
  list(1, 2, 3), 
  list(4, 5, 6),
  list(7, 8, 9)
))myFlatten println

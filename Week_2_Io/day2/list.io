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


# Add a slot called myAverage to a list that computes the average of all the numbers in that list.
# What happens if there are no numbers on that list?
# Bonus: raise an Io exception if any item on the list is not a number# Bonus: raise an Io exception if any item on the list is not a number
List myAverage := method(
  if(self size == 0, 0, 
    sum := self reduce(sum, next,
      if(next isKindOf(Number) == false, 
        Exception raise("myAverage only responds to numbers!"), 
        sum + next), 
      0)
    sum / (self size)
  )
)
# avg = 2
list(1, 2, 3) myAverage println
# avg = 3.6
list(4, 5, 2, 4, 3) myAverage println
# What happens if there are no numbers on that list:
# - Io Exception: Object does not respond to '''

# Bonus: raise custom Io exception
e := try(list(1, 2, "3") myAverage)
e catch(Exception, e println)

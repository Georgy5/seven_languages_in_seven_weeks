Binsearch := Object clone do (
  search := method(ary, target,
    left := 0
    right := (ary size) - 1
    while(left <= right,
      mid := ((left + right) / 2) floor
      if (ary at(mid) == target) then (return mid)
      if(ary at(mid) > target) then (right = mid - 1)
      if(ary at(mid) < target) then (left = mid + 1)
    )
    return -1
  )
)

numbersList := list(-1,0,3,5,9,12)
// Output of -1 means that the target is not present
target := 2
Binsearch search(numbersList, target) println

// Returns the index location of the target
nexttarget := 3
Binsearch search(numbersList, nexttarget) println

myIf := method(
  call evalArgAt(0) ifTrue(
  call evalArgAt(1)) ifFalse(
  call evalArgAt(2))
)

res := 1 == 2

"IO if:\n" println
if(res, write("1 is equal to 2\n"), write("1 is not 2!\n"))

"myIf:\n" println
myIf(res, write("1 is equal to 2\n"), write("1 is not 2!\n"))

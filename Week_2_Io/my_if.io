myIf := method(
  (call sender doMessage(call message argAt(0))) ifTrue(
  call sender doMessage(call message argAt(1))) ifFalse(
  call sender doMessage(call message argAt(2)))
)

res := 1 == 2

"IO if:\n" println
if(res, write("1 is equal to 2\n"), write("1 is not 2!\n"))

"myIf:\n" println
myIf(res, write("1 is equal to 2\n"), write("1 is not 2!\n"))


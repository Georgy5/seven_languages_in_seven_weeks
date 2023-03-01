LongTask := method(
	"LongTask start Working..." println
	wait(5)
	"<LongTask Result>")

futureResult := @LongTask 

"Do anything freely here" println

for(i, 1, 3, writeln("counter: ", i, "/3") wait(1))

"Blocking to get the result ..." println
writeln("Fetched ", futureResult size, " bytes")
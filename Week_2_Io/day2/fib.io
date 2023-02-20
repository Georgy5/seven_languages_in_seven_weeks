fib := method(n,
  if(n <= 1, return n,
    return fib(n - 1) + fib(n - 2)
  )
)

"fib" println
fib(1) println
fib(4) println
fib(8) println

#Base-cases in Haskell-style:
0 fib2 := 0
1 fib2 := 1
Number fib2 := method(
  a := (self - 1) fib2
  b := (self - 2) fib2
  a + b
)

for(i, 0, 9, fib(i) println)
"fib2" println
for(i, 0, 9, i fib2 println)

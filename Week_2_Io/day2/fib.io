fib := method(n,
  if(n <= 1, return n,
    return fib(n - 1) + fib(n - 2)
  )
)

fib(1) println
fib(4) println
fib(8) println
RandomGame := Object clone
RandomGame create := method(
  "You have 10 tries." println
  game := self clone
  game number := Random value(1, 100) floor
  game
)
RandomGame guess := method(value, 
  result := if(value > self number,
    "too big",
    if(value < self number,
      "too low",
      "Correct guess!")
    )
  result println
  self number == value
)

tries := 10

game := RandomGame create
isGuessedRight := false
while(tries > 0 and isGuessedRight != true, 
  "Guess the number between 1 and 100!" println
  tries := tries - 1
  input := File standardInput readLine asNumber
  isGuessedRight := game guess(input) 
)

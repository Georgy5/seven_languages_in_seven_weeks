x := Random value(1, 100) floor
game := true
while(game,
  ("Guess a number between 1 and 100!" println
  y := File standardInput readLine asNumber
  str := "your guess of " .. y .. " was too "
  if(x < y,
    (str .. "big") println,
    if(y < x,
    (str .. "small") println,
    (("That's right! The number was " .. x) println;
      x = Random value(1, 100) floor)
    )
  ))
)

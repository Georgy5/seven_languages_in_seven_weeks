Object squareBrackets := method(
    r := List clone
    call message arguments foreach(arg,
        r push(call sender doMessage(arg)))
    r
)

bracket := [1, 2, 3]
writeln(bracket)
# list(1, 2, 3)
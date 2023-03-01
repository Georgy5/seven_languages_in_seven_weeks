vizzini := Object clone
vizzini talk := method(
	"V: Fezzik, are there rocks ahead?" println
	yield
	"V: No more rhymes now, I mean it." println
	yield
)

fezzik := Object clone
fezzik rhyme := method(
	yield
	"F: If there are, we'll all be dead." println
	yield
	"F: Anybody want a peanut?" println
)

# run code concurrently
# will return nil immediately
vizzini @@talk; fezzik @@rhyme

# this would wait until coroutine tasks are done.
# please refer to Coroutine - pause:
# https://iolanguage.org/reference/index.html
Coroutine currentCoroutine pause

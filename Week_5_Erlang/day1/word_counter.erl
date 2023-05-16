-module(word_counter).
-export([count_words/1, count_words/2]).

count_words(Text) ->
  count_words(string:tokens(Text, " "), 0).

count_words([], Count) ->
  Count;

count_words([_Head | Tail], Count) ->
  count_words(Tail, Count + 1).

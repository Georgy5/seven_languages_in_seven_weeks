-module(recursive_counter).
-export([count_to_ten/0, count/1]).

count_to_ten() ->
  count(1).

count(11) ->
  ok;

count(N) ->
  io:format("~p~n", [N]),
  count(N + 1).

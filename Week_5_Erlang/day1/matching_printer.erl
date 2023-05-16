-module(matching_printer).
-export([print_message/1]).

print_message(success) ->
  io:format("success~n");

print_message({error, Message}) ->
  io:format("error: ~p~n", [Message]).

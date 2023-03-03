% Task #3: construct a knowledge base representing musicians and
% instruments. Also represent musicians and their genre of music.

musician(frankZappa).
musician(steveVai).
musician(tommyEmmanuel).
musician(kennyG).
musician(eugeGroove).

instrument(guitar).
instrument(keyboards).
instrument(saxophone).

genres(rock).
genres(blues).
genres(jazz).
genres(folk).
genres(pop).

uses_instrument(frankZappa   , guitar   ).
uses_instrument(steveVai     , guitar   ).
uses_instrument(steveVai     , keyboards).
uses_instrument(tommyEmmanuel, guitar   ).
uses_instrument(kennyG       , saxophone).
uses_instrument(eugeGroove   , saxophone).

in_genres(steveVai     , rock ).
in_genres(frankZappa   , rock ).
in_genres(tommyEmmanuel, folk ).
in_genres(tommyEmmanuel, blues).
in_genres(tommyEmmanuel, pop  ).
in_genres(frankZappa   , pop  ).
in_genres(frankZappa   , jazz ).
in_genres(tommyEmmanuel, jazz ).
in_genres(kennyG       , jazz ).
in_genres(eugeGroove   , jazz ).

genres_use_instrument(Genres, Instrument) :- 
	uses_instrument(Musician, Instrument),
	in_genres(Musician, Genres).

% queries

% Task #3: find all musicians that play guitar
uses_instrument(Musician, guitar).

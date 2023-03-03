% facts

% Task #1: construct a simple knowledge base 
% Represent some books and their authors
writes_book(agathaChristie, theABCMurder).
writes_book(agathaChristie, afterTheFuneral).
writes_book(agathaChristie, andThenThereWereNone).

writes_book(terryPratchett, theColourOfMagic).
writes_book(terryPratchett, theLightFantastic).
writes_book(terryPratchett, equalRites).
writes_book(terryPratchett, mort).
writes_book(terryPratchett, sourcery).
writes_book(terryPratchett, wyrdSisters).
writes_book(terryPratchett, pyramids).
writes_book(terryPratchett, witchesAbroad).
writes_book(terryPratchett, nightWatch).
writes_book(terryPratchett, raisingSteam).

writes_book(arthurConanDoyle, aStudyInScarlet).
writes_book(arthurConanDoyle, theSignOfTheFour).

author(X, Y) :- writes_book(X, Z), book(Y, Z).

% Task #2: find all books written by same author
writes_book(terryPratchett, Book).
writes_book(agathaChristie, Book).
writes_book(arthurConanDoyle, Book).
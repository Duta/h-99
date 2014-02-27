module Q02 where

myButLast :: [a] -> a
myButLast []    = error "Empty list has no second last element"
myButLast [_]   = error "Singleton list has no second last element"
myButLast [x,_] = x
myButLast (_:t) = myButLast t

-- This looks nicer, but has bad error handling
-- for the empty and singleton cases.
myButLast' :: [a] -> a
myButLast' = head . reverse . init
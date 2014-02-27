module Q01 where

myLast :: [a] -> a
myLast [] = error "Empty list has no last element"
myLast [h] = h
myLast (_:t) = myLast t

-- This looks nicer, but has bad error handling
-- for the empty case.
myLast' :: [a] -> a
myLast' = head . reverse
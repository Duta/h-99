module Q06 where

import Q05

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == myReverse xs

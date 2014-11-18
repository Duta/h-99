module Q05 where

import Data.List (foldl')

myReverse :: [a] -> [a]
myReverse []    = []
myReverse (h:t) = myReverse t ++ [h]

myReverse' :: [a] -> [a]
myReverse' = foldl' (flip (:)) []

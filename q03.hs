module Q03 where

import Data.List (genericDrop)

elementAt :: Integral b => [a] -> b -> a
elementAt [] _    = error "Invalid index"
elementAt (h:_) 1 = h
elementAt (_:t) n = elementAt t (n-1)

elementAt' :: Integral b => [a] -> b -> a
elementAt' xs = head . (`genericDrop` xs) . subtract 1

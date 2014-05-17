module Q21 where

insertAt :: a -> [a] -> Int -> [a]
insertAt x xs i = let i' = i-1 in take i' xs ++ x:drop i' xs

module Q20 where

removeAt :: Int -> [a] -> (a, [a])
removeAt i xs = (xs !! (i-1), take (i-1) xs ++ drop i xs)

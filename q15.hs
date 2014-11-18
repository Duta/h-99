module Q15 where

repli :: [a] -> Int -> [a]
repli xs n = concatMap (\x -> replicate n x) xs

repli' :: [a] -> Int -> [a]
repli' xs = (xs >>=) . replicate

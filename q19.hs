module Q19 where

rotate :: [a] -> Int -> [a]
rotate xs n
  | n > 0 = let n' = n `mod` length xs in drop n' xs ++ take n' xs
  | n < 0 = reverse $ rotate (reverse xs) (-n)
  | otherwise = xs

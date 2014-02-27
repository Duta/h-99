module Q18 where

slice :: [a] -> Int -> Int -> [a]
slice xs i k = concatMap f $ zip [1..] xs
  where
    f (j, x)
      | i <= j && j <= k = [x]
      | otherwise        = []

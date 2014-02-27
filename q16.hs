module Q16 where

dropEvery :: [a] -> Int -> [a]
dropEvery xs n = concatMap f $ zip [0..] xs
  where
    f (i, x)
      | (i+1) `mod` n == 0 = []
      | otherwise          = [x]
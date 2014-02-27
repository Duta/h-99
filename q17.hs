module Q17 where

split :: [a] -> Int -> ([a], [a])
split xs n = (g takeWhile, g dropWhile)
  where
    f (i, x) = i < n
    g doWhile = map snd $ doWhile f $ zip [0..] xs

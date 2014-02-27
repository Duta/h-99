compress :: Eq a => [a] -> [a]
compress [] = []
compress (h:[]) = [h]
compress (h:h':t)
  | h == h' = compress (h':t)
  | otherwise = h:(compress (h':t))

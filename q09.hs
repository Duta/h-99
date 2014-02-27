pack' :: Eq a => [a] -> [a] -> [[a]]
pack' [] _ = []
pack' (h:[]) xs = [h:xs]
pack' (h:h':t) xs
  | h == h'   = pack' t' xs'
  | otherwise = xs':(pack' t' [])
  where
    xs' = h:xs
    t' = h':t

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack xs = pack' xs []

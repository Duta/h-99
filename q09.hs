module Q09 where

pack :: Eq a => [a] -> [[a]]
pack []    = []
pack (h:t) = h':pack t'
  where
    h' = takeWhile (==h) (h:t)
    t' = dropWhile (==h) t
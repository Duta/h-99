module Q09 where

pack :: Eq a => [a] -> [[a]]
pack []    = []
pack xs@(h:t) = h':pack t'
  where
    h' = takeWhile (==h) xs
    t' = dropWhile (==h) t
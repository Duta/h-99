module Q08 where

compress :: Eq a => [a] -> [a]
compress []    = []
compress (h:t) = h:compress (dropWhile (==h) t)
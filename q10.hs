module Q10 where

import Q09

encode :: Eq a => [a] -> [(Int, a)]
encode = (map $ \xs@(h:t) -> (length xs, h)) . pack
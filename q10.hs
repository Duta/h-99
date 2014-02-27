module Q10 where

import Q09

encode :: Eq a => [a] -> [(Int, a)]
encode = (map $ \(h:t) -> (length (h:t), h)) . pack
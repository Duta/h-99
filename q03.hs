module Q03 where

elementAt :: Integral b => [a] -> b -> a
elementAt [] _ = error "Invalid index"
elementAt (h:_) 1 = h
elementAt (_:t) n = elementAt t (n-1)
module Q14 where

dupli :: [a] -> [a]
dupli [] = []
dupli (h:t) = h:h:dupli t
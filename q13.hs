module Q13 where

data OneOrMany a = Single a | Multiple Int a
  deriving (Show)

encodeDirect :: Eq a => [a] -> [OneOrMany a]
encodeDirect []    = []
encodeDirect (h:t) = h':encodeDirect t'
  where
    h' = case length $ takeWhile (==h) (h:t) of
      1 -> Single h
      n -> Multiple n h
    t' = dropWhile (==h) t
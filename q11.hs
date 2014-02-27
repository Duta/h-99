module Q11 where

import Q10

data OneOrMany a = Single a | Multiple Int a
  deriving (Show)

encodeModified :: Eq a => [a] -> [OneOrMany a]
encodeModified = map f . encode
  where
    f :: (Int, a) -> OneOrMany a
    f (1, x) = Single x
    f (n, x) = Multiple n x
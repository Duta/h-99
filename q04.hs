module Q04 where

myLength :: Integral b => [a] -> b
myLength []    = 0
myLength (_:t) = 1 + myLength t

myLength' :: Integral b => [a] -> b
myLength' = sum . map (\_ -> 1)
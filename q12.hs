module Q12 where

import Q11

decodeModified :: [OneOrMany a] -> [a]
decodeModified []                 = []
decodeModified (Single x : t)     = x:(decodeModified t)
decodeModified (Multiple n x : t) = replicate n x ++ decodeModified t
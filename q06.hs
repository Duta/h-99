myReverse :: [a] -> [a]
myReverse [] = []
myReverse (h:t) = myReverse t ++ [h]

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == myReverse xs

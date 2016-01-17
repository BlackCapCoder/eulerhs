{-
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product of two 3-digit numbers.
-}

isPalindrome n = let str =  show n
                 in  str == reverse str

main = print $ maximum [ x*y | x <- [100..999]
                             , y <- [100..999]
                             , isPalindrome $ x*y ]

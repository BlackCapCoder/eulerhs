{-
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a^2 + b^2 = c^2

For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
-}

import Control.Monad

solve n = do
  let half = div n 2

  b <- [1..half]

  let a = fromIntegral (n*half - n*b)
        / fromIntegral (n-b)

  guard $ floor a == ceiling a

  return $ floor a * b * (n - floor a - b)

main = print $ solve 1000

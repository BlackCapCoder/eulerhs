{-
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

import Data.Numbers.Primes

-- The number has to be a multiple of the product of the primes <20
step = product $ takeWhile (<20) primes

main = print . head
             . filter isDivisible
             $ (*step) <$> [1..]

isDivisible x = all ((==0) . mod x) [16, 18]

{-
  We know that the number is a multiple of the
  primes <20:
  2,3,5,7,11,13,17,19

  We need to check:
  4,6,8,9,10,12,14,15,16,18,20

  We can remove semi-primes that are not
  a square of two primes:
  6  = 2*3
  10 = 2*5
  14 = 2*7
  15 = 3*5

  We are left with:
  4,8,9,12,16,18,20

  We can remove any number that can be
  made with one of the semi-primes and
  a prime:
  20 = 2*10
  12 = 2*6

  We are left with:
  4,8,9,16,18

  The last two numbers have the following factors:
  18: 1,2,3,6,9*,18*
  16: 1,2,4*,8*,16*

  Therefor we only need to check 16 and 18

  I know, I know .. it's a bit over engineered
-}

{-
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
-}

import Data.Numbers.Primes -- cabal install primes

main = print . maximum $ primeFactors 600851475143

{-
  The primes package provides a fast wheel sieve.

  For a easy (but slow) way to generate primes,
  use the sieve of eratosthenes:
    (fix $ \f (x:xs) -> x : f [p | p <- xs, mod p x > 0]) [2..]

  I figured I'd grab the package for a efficient way
  to solve later problems.
 -}

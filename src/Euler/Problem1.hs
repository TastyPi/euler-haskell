module Euler.Problem1 where

import Data.Triangle

sumMultiplesUpTo :: Integral a => a -> a -> a
sumMultiplesUpTo n limit = n * triangle ((limit - 1) `div` n)

sumMultiplesOf3And5UpTo :: Integral a => a -> a
sumMultiplesOf3And5UpTo limit = sumMultiplesUpTo 3 limit + sumMultiplesUpTo 5 limit - sumMultiplesUpTo 15 limit

solution1 :: IO ()
solution1 = print (sumMultiplesOf3And5UpTo 1000)

module Data.Triangle where

triangle :: Integral a => a -> a
triangle n = (n * (n + 1)) `div` 2

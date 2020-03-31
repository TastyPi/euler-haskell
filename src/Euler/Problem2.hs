{-# LANGUAGE NumericUnderscores #-}
module Euler.Problem2 where

import EulerPrelude

import Data.Fibonacci

solution2 :: IO ()
solution2 = print $ sum $ filter even $ takeWhile (< 4_000_000) fibonaccis

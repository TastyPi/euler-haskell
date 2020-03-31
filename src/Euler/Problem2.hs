{-# LANGUAGE NumericUnderscores #-}
module Euler.Problem2 where

import Prelude hiding (takeWhile)
import Data.ExtraFoldable
import Data.Fibonacci

solution2 :: IO ()
solution2 = print $ sum $ filter even $ takeWhile (< 4_000_000) fibonaccis

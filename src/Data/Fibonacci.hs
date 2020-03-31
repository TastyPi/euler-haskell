module Data.Fibonacci where

import Prelude hiding (tail, zipWith)
import Data.InfList
import Data.Zip

fibonaccis :: Integral a => InfList a
fibonaccis = 1 :> zipWith (+) (1 :> fibonaccis) fibonaccis

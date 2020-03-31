module Data.Fibonacci where

import EulerPrelude

import Data.InfList

fibonaccis :: Integral a => InfList a
fibonaccis = 1 :> zipWith (+) (1 :> fibonaccis) fibonaccis

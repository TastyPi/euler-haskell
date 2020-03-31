module Euler.Problem2Spec (spec) where

import Prelude hiding (take)
import Data.ExtraFoldable
import Data.Fibonacci
import Data.InfList
import Euler.Problem2
import Test.Hspec

spec :: Spec
spec = do
  describe "fibonaccis" $ do
    it "first 10 values" $ do
      take 10 fibonaccis `shouldBe` [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]

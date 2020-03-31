module Euler.Problem1Spec (spec) where

import EulerPrelude

import Euler.Problem1
import Test.Hspec

spec :: Spec
spec = do
  describe "sumMultiplesOf3And5UpTo" $ do
    it "provides correct answer for 10" $ do
      sumMultiplesOf3And5UpTo 10 `shouldBe` 23
    it "provides correct answer for 20" $ do
      sumMultiplesOf3And5UpTo 20 `shouldBe` (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18)

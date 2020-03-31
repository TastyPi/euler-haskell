module EulerPrelude (module All, take, takeWhile) where

import Prelude as All hiding (take, takeWhile, zip, zipWith)
import Data.Zip as All
import GHC.Natural as All

take :: Foldable f => Natural -> f a -> [a]
take n f = foldr step (const []) f n
  where
    step _ _ 0 = []
    step x g n = x : g (n - 1)

takeWhile :: Foldable f => (a -> Bool) -> f a -> [a]
takeWhile p f = foldr step [] f
  where
    step x xs = if p x then x:xs else []

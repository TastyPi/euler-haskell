module Data.ExtraFoldable where

import GHC.Natural

take :: Foldable f => Natural -> f a -> [a]
take n f = foldr step (const []) f n
  where
    step x _ 0 = []
    step x g n = x : g (n - 1)

takeWhile :: Foldable f => (a -> Bool) -> f a -> [a]
takeWhile p f = foldr step [] f
  where
    step x acc = if p x then x:acc else []

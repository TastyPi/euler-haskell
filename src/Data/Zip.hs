{-# LANGUAGE DefaultSignatures #-}
module Data.Zip where

import Prelude hiding (zip, zipWith)
import qualified Prelude as Prelude

class Zip f where
  zip :: f a -> f b -> f (a, b)
  zip = zipWith (,)

  zipWith :: (a -> b -> c) -> f a -> f b -> f c
  default zipWith :: Functor f => (a -> b -> c) -> f a -> f b -> f c
  zipWith f xs ys = uncurry f <$> zip xs ys

instance Zip [] where
  zip = Prelude.zip
  zipWith = Prelude.zipWith

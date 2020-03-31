{-# LANGUAGE DeriveFoldable, DeriveFunctor #-}

module Data.InfList where

import Prelude hiding (zipWith)
import Data.Zip

data InfList a = a :> InfList a
  deriving (Functor, Foldable)
infixr :>

instance Zip InfList where
  zipWith f (x :> xs) (y :> ys) = f x y :> zipWith f xs ys

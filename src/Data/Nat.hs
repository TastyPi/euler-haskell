module Data.Nat where

class Peano a where
  zero :: a
  succ :: a -> a

data Nat = Zero | Succ Nat

instance Peano Nat where
  zero = Zero
  succ = Succ



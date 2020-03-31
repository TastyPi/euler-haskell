module Data.Triangle where

import EulerPrelude

triangle :: Natural -> Natural
triangle n = (n * (n + 1)) `div` 2

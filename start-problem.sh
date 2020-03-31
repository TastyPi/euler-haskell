#!/bin/bash

cat <<EOF >"src/Euler/Problem${1}.hs"
module Euler.Problem${1} where

solution${1} :: IO ()
solution${1} = undefined
EOF

cat <<EOF >"test/Euler/Problem${1}Spec.hs"
module Euler.Problem${1}Spec (spec) where

import Euler.Problem${1}
import Test.Hspec

spec :: Spec
spec = undefined
EOF

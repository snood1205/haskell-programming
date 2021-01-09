module GrabBag where

addOneIfOdd n =
  if odd n
    then f n
    else n
  where
    f = (\n -> n + 1)

addFive = \x -> \y -> (if x > y then y else x) + 5

mFlip f x y = f y x
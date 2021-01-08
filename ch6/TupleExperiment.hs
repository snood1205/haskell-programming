 module TupleExperiment where

divMod :: Integral a => a -> a -> (a, a)
divMod a b = (div a b, mod a b)

quotRem :: Integral a => a -> a -> (a, a)
quotRem a b = (quot a b, rem a b)

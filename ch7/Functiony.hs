module Functiony where

myNum :: Integer
myNum = 1

myVal f = myNum

addOne :: Integer -> Integer
addOne x = x + 1

bindExp :: Integer -> String
bindExp x =
  let y = 5
   in let z = y + x
       in "the integer was: "
            ++ show x
            ++ " and y was: "
            ++ show y
            ++ " and z was: "
            ++ show z
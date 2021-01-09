module GreetIfCool3 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  case cool of
    True ->
      putStrLn "eyyyyyy. What's shakin'?"
    False ->
      putStrLn "pshhhhhh."
  where
    cool = coolness == "downright frosty you"
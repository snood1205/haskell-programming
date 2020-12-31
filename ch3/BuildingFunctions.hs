module BuildingFunctions where

exercise1a :: String -> String
exercise1a str = str ++ "!"

exercise1b :: String -> String
exercise1b x = drop 4 $ take 5 x

exercise1c :: String -> String
exercise1c = drop 9

thirdLetter :: String -> Char
thirdLetter x = (!!) x 2

letterIndex :: Int -> Char
letterIndex = (!!) "Curry is awesome!"

rvrs :: String -> String
rvrs x =
  concat
    [ drop 9 x,
      take 4 $ drop 5 x,
      take 5 x
    ]
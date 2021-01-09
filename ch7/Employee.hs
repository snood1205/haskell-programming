module Employee where

data Employee
  = Coder
  | Manager
  | Veep
  | CEO
  deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' =
  putStrLn $
    show e
      ++ " is the boss of "
      ++ show e'

employeeRank :: (Employee -> Employee -> Ordering) -> Employee -> Employee -> IO ()
employeeRank f e e' =
  case f e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee is the boss"
    LT -> reportBoss e' e

codersRule :: Employee -> Employee -> Ordering
codersRule Coder Coder = EQ
codersRule Coder _ = GT
codersRule _ Coder = LT
codersRule e e' = compare e e'
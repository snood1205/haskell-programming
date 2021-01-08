module DayOfWeek where

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Eq, Show)

data Date
  = Date DayOfWeek Int

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _ Fri   = LT
  compare _ _     = EQ

instance Eq Date where
  (==)
    (Date weekday dayOfMonth)
    (Date weekday' dayOfMonth') =
      weekday == weekday'
        && dayOfMonth == dayOfMonth'

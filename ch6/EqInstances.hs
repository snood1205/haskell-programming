module EqInstances where

-- Question 1
data TisAnInteger = TisAn Integer

instance Eq TisAnInteger where
  (==) (TisAn i) (TisAn i') = i == i'

-- Question 2
data TwoIntegers = Two Integer Integer

instance Eq TwoIntegers where
  (==) (Two a b) (Two a' b') = a == a' && b == b'

-- Question 3
data StringOrInt
  = TisAnInt Int
  | TisAString String

instance Eq StringOrInt where
  (==) (TisAnInt a) (TisAnInt a') = a == a'
  (==) (TisAString a) (TisAString a') = a == a'
  (==) _ _ = False

-- Question 4
data Pair a = Pair a a

instance Eq a => Eq (Pair a) where
  (==) (Pair x y) (Pair x' y') = x == x && y == y'

-- Question 5
data Tuple a b = Tuple a b

instance (Eq a, Eq b) => Eq (Tuple a b) where
  (==) (Tuple x y) (Tuple x' y') = x == x && y == y'

-- Question 6
data Which a
  = ThisOne a
  | ThatOne a

instance Eq a => Eq (Which a) where
  (==) (ThisOne x) (ThisOne x') = x == x'
  (==) (ThatOne x) (ThatOne x') = x == x'
  (==) _ _ = False

-- Question 7
data EitherOr a b
  = Hello a
  | Goodbye b

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  (==) (Hello a) (Hello a') = a == a'
  (==) (Goodbye b) (Goodbye b') = b == b'
  (==) _ _ = False
# Chapter 5: Types

## Exercises: Type Matching

Answers:

1. `not :: Bool -> Bool`
2. `length :: [a] -> Int`
3. `concat :: [[a]] -> [a]`
4. `head :: [a] -> a`
5. `(<) :: (Ord a) => a -> a -> Bool`

## Exercises: Type arguments

1. Given `f :: a -> a -> a -> a` and `x :: Char` then `f x` is `Char -> Char -> Char`
2. Given `g :: a -> b -> c -> b` then `g 0 'c' "woot"` is a `Char`
3. Given `h :: (Num a, Num b) => a -> b -> b` then `h 1.0 2` is `Integer`
4. Given `h :: (Num a, Num b) => a -> b -> b` then `h 1 (5.5 : Double)` is `Double`
5. Given `jackal :: (Ord a, Eq b) => a -> b -> a` then `jackal "keyboard" "has the word jackal in it"` is `[Char]`
6. Given `jackal :: (Ord a, Eq b) => a -> b -> a` then `jackal "keyboard"` is `Eq b => b -> [Char]`
7. Given `kessel :: (Ord a, Num b) => a -> b -> a` then `kessel 1 2`is `Ord a => a`
8. Given `kessel :: (Ord a, Num b) => a -> b -> a` then `kessel 1 (2 :: Integer)` is `Ord a => a`
9. Given `kessel :: (Ord a, Num b) => a -> b -> a` then `kessel (1 :: Integer) 2` is `Integer`

## Exercises: Parametricity

1. (As the exercise is impossible, as listed no answer is provided)
2. For the functions with parametricity `a -> a -> a` the two possible solutions
   I have found are

```haskell
f :: a -> a -> a
f a b = a

g :: a -> a -> a
g a b = b
```

3. There is only one feasible implementation I can think of for `a -> b -> b` which is

```haskell
h :: a -> b -> b
h a b = b
```

## Exercises: Apply Yourself

1. The type of `myConcat x = x ++ " yo"` should be `myConcat x :: [Char] -> [Char]`
2. The type of `myMult x = (x / 3) * 5` should be `myMult :: (Fractional a) => a -> a`
3. The type of `myTake x = take x "hey you"` should be `myTake :: Int -> [Char]`
4. The type of `myCom x = x > (length [1..10])` should be `myCom :: Int -> Bool`
5. The type of `myAlph x = x < 'z'` shoul be `myAlph :: Char -> Bool`

## Chapter Exercises

### Multiple Choice

1. (c)
2. (a)
3. (b)
4. (c)

### Determine The Type

1. Values for functions:
   a) `54 :: Num a`
   b) `(0, "doge") :: (Num a) => (a, [Char])`
   c) `(0 :: Integer, "doge") :: (Integer, [Char])`
   d) `False :: Bool`
   e) `5 :: Int`
   f) `False :: Bool`
2. `w :: Num a => a`
3. `z :: Num a => a -> a`
4. `f :: Fractional a => a`
5. `f :: [Char]`

### Does it compile

1. No because `10` cannot be applied to `bigNum` which is `Num a => a`
2. Yes
3. No because `10` cannot be applied to `b` which is a `Num a => a`, correctly it would be

```haskell
a = (+)
b = a 5
c = a 10
d = c 200
```

4. No and it cannot be fixed as we do not now what `c` is


# Chapter 4: Because Pigs Can't Fly

## Exercises: Mood Swing

1. The name is `Mood`
2. The values that can be used are `Blah` or `Woot`
3. `changeMood :: Mood -> Woot` is invalid because `Woot` is not the only possible type of `Mood`. The proper signature is `changeMood :: Mood -> Mood`.
4. Complete the function

   ```haskell
   changeMood :: Mood -> Mood
   changeMood Blah = Woot
   changeMood _ = Blah
   ```

5. Find the file [here](./MoodSwing.hs)

## Exercises: Find the mistakes

1. Correction: `not True && True` or possibly even `not $ True && True` depending upon intent.
2. Correction: `not $ x == 6`
3. Valid (but will evaulate to false)
4. Valid (assuming `Merry` and `Happy` are defined)
5. No idea what you're going for there. You can't add a string to an Integer array.

## Chapter Exercises

1. It takes one argument and resolves to `Int`, The type signature is `length :: [a] -> Int`
2. The results are
   a. 5
   b. 3
   c. 2
   d. 5
3. `6 / length [1, 2, 3]` will return an error
4. The error from (3) can be fixed as such ``6 `div` length [1, 2, 3]``
5. The type is `Bool` the result is `True`
6. The results are
   a. `()`
   b. `Bool`, `True`
7. These bits of code
   a. Will execute to `True`
   b. Will execute to `4`
   c. Will execute to `5`
   d. Will execute to `False`
   e. Will not work because `9` is not a `Bool`
8. Here is the function

   ```haskell
   isPalindrome :: (Eq a) => [a] -> Bool
   isPalindrome x = x == reverse x
   ```

9. Here is the function

   ```haskell
   myAbs :: Integer -> Integer
   myAbs x = 
     if x < 0
       then (-x)
       else x
   ```

10. Here is the function

   ```haskell
   f :: (a, b) -> (c, d) -> ((b, d), (a, c))
   f a b = ((snd a, snd b), (fst a, fst b))
   ```

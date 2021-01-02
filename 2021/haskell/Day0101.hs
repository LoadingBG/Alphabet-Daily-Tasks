module Main where

import Data.Char
import Text.Regex.TDFA
import Text.Regex.TDFA.Text

nthEven :: Int -> Int
nthEven n = 2 * n - 2

validateEmail :: String -> Bool
validateEmail = flip (=~) ".+@.+\\..+"

atbash :: String -> String
atbash = map atbash_letter
  where
    atbash_letter l
      | isLower l = chr $ ord 'z' - ord l + ord 'a'
      | isUpper l = chr $ ord 'Z' - ord l + ord 'A'
      | otherwise = l

main :: IO ()
main = do
  putStrLn ("nth_even #1: " ++ (show $ nthEven 1))
  putStrLn ("nth_even #2: " ++ (show $ nthEven 2))
  putStrLn ("nth_even #3: " ++ (show $ nthEven 100))
  putStrLn "----------"
  putStrLn ("validateEmail #1: " ++ (show $ validateEmail "@gmail.com"))
  putStrLn ("validateEmail #2: " ++ (show $ validateEmail "hello.gmail@com"))
  putStrLn ("validateEmail #3: " ++ (show $ validateEmail "gmail"))
  putStrLn ("validateEmail #4: " ++ (show $ validateEmail "hello@gmail"))
  putStrLn ("validateEmail #5: " ++ (show $ validateEmail "hello@edabit.com"))
  putStrLn "----------"
  putStrLn ("atbash #1: " ++ atbash "apple")
  putStrLn ("atbash #2: " ++ atbash "Hello world!")
  putStrLn ("atbash #3: " ++ atbash "Christmas is the 25th of December")

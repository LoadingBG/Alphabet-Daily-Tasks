{-
  Author: Loading BG#7962
-}

module Main where

import Data.Char
import Data.List (sortBy)

avg :: [Int] -> Int
avg xs = div (foldl (+) 0 xs) (length xs)
averageChar :: String -> Char
averageChar = chr . avg . map ord

spaceHelper :: Int -> String -> String
spaceHelper i s
  | length s == 0    = ""
  | i == 0           = (s !! 0) : (spaceHelper (i + 1) $ drop 1 s)
  | isUpper (s !! 0) = " " ++ [toLower (s !! 0)] ++ (spaceHelper (i + 1) $ drop 1 s)
  | otherwise        = (s !! 0) : (spaceHelper (i + 1) $ drop 1 s)
space :: String -> String
space s = spaceHelper 0 s

sort :: String -> String
sort = unwords . sortBy (\a b -> compare (averageChar a) (averageChar b)) . words

main :: IO ()
main = do
  putStrLn ("averageChar #1: " ++ (show $ averageChar "Hello"))
  putStrLn ("averageChar #2: " ++ (show $ averageChar "Yes"))
  putStrLn ("averageChar #3: " ++ (show $ averageChar "aaaa"))
  putStrLn "-----------"
  putStrLn ("space #1: " ++ (show $ space "HelloWorld!"))
  putStrLn ("space #2: " ++ (show $ space "HowAreYou?"))
  putStrLn ("space #3: " ++ (show $ space "Example"))
  putStrLn ("space #4: " ++ (show $ space "Simple,Right?"))
  putStrLn "-----------"
  putStrLn ("sort #1: " ++ (show $ sort "Hello Yes aaaa"))

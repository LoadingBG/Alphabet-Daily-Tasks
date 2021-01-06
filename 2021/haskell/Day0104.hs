{-
  Author: Loading BG#7962
-}

module Main where

import GHC.Float
import Data.Char

checkHelper :: String -> [Int] -> String
checkHelper prevOp [el] = prevOp
checkHelper prevOp (x:y:rest)
  | diff < 0 && prevOp == "decreasing" = "neither"
  | diff > 0 && prevOp == "increasing" = "neither"
  | otherwise                          = checkHelper nextOp $ y : rest
  where
    diff = x - y
    nextOp = if diff < 0 then "increasing" else "decreasing"
check :: [Int] -> String
check = checkHelper "neither"

area :: (Int, Int) -> (Int, Int) -> (Int, Int) -> Int
area (x1, y1) (x2, y2) (x3, y3) = float2Int $ abs $ int2Float (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2.0
withinTri :: [(Int, Int)] -> (Int, Int) -> Bool
withinTri [p1, p2, p3] p = baseArea == p1p2Area + p1p3Area + p2p3Area
  where
    baseArea = area p1 p2 p3
    p1p2Area = area p1 p2 p
    p1p3Area = area p1 p3 p
    p2p3Area = area p2 p3 p

color :: String -> Bool
color pos = ord (pos !! 0) `mod` 2 == ord (pos !! 1) `mod` 2
bishop :: String -> String -> Int -> Bool
bishop start end moves = color start == color end

main :: IO ()
main = do
  putStrLn ("check #1: " ++ (show $ check [1, 2, 3]))
  putStrLn ("check #2: " ++ (show $ check [3, 2, 1]))
  putStrLn ("check #3: " ++ (show $ check [1, 2, 1]))
  putStrLn "-----------"
  putStrLn ("withinTriangle #1: " ++ (show $ withinTri [(1, 4), (5, 6), (6, 1)] (4, 5)))
  putStrLn ("withinTriangle #2: " ++ (show $ withinTri [(1, 4), (5, 6), (6, 1)] (3, 2)))
  putStrLn "-----------"
  putStrLn ("bishop #1: " ++ (show $ bishop "a1" "b4" 2))
  putStrLn ("bishop #2: " ++ (show $ bishop "a1" "b5" 5))
  putStrLn ("bishop #3: " ++ (show $ bishop "f1" "f1" 0))

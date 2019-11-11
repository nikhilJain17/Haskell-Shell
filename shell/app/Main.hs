module Main where

import Lib

main :: IO ()
main = someFunc

-- some random unix utilities 
wc :: String -> IO ()
wc filepath = 
    do
        x <- readFile filepath
        putStrLn $ (show $ countSpaces x) <> ", " <> (show $ countChars x)

countSpaces :: String -> Int
countSpaces w = foldr (+) 1 [1 | c <- w, c `elem` [' ', '\n', '\t']]

countChars :: String -> Int
countChars x = length x
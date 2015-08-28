module Main where

import ChapterOne

main :: IO ()
main = do
    print $ qsort "nathan"
    print $ double 2
    print $ mySum [1, 2, 3, 4, 5]
    print $ myProduct [2, 3, 4]
    print $ rqsort "nathan"

module ChapterOne where

qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where
                   smaller = [a | a <- xs, a <= x]
                   larger  = [b | b <- xs, b > x]

double :: Num a => a -> a
double = (* 2)

mySum :: Num a => [a] -> a
mySum = foldl1 (+)

myProduct :: Num a => [a] -> a
myProduct = foldl1 (*)

rqsort :: Ord a => [a] -> [a]
rqsort [] = []
rqsort (x:xs) = rqsort larger ++ [x] ++ qsort smaller
                where
                    smaller = [a | a <- xs, a <= x]
                    larger  = [b | b <- xs, b > x]

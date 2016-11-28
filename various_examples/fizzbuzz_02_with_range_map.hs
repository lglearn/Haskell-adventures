-- Simple implementation of FizzBuzz.
-- The line numbers at the start of each line are added for convenience, they are not part
-- of the original FizzBuzz definition.
--
module Main where
import System.IO

-- add number at start of line (for reading convenience)
prepend :: Integer -> String -> String
prepend num str = show num ++ ": " ++ str

-- FizzBuzz: using guards patterns matching
checkFizzBuzz num
  | num `mod` 15 == 0 = prepend num "FizzBuzz" -- must be first: order matters!!
  | num `mod`  3 == 0 = prepend num "Fizz"
  | num `mod`  5 == 0 = prepend num "Buzz"
  | otherwise         = prepend num (show num)

main = do
   let res = map checkFizzBuzz [1..100]
   
   -- print each elem of the list on a separate line
   -- mapM_: Map each element of a structure to a monadic action, evaluate these actions from left to right, and ignore the results. 
   mapM_ putStrLn res

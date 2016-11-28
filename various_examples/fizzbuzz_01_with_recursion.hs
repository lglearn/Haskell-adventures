-- Simple implementation of FizzBuzz.
-- The line numbers at the start of each line are added for convenience, they are not part
-- of the original FizzBuzz definition.
--
module Main where
import System.IO

max_loop = 100

-- FizzBuzz: using simple "case" patterns matching
checkFizzBuzz index =
  case (index `mod` 3, index `mod` 5) of
       (0, 0) ->  "FizzBuzz" -- must be first: order matters!!
       (0, _) ->  "Fizz"
       (_, 0) ->  "Buzz"
       _ -> show index

-- Loop done by recursion to show basic recursion. We could use a range+map.
loop index = do
  if index <= max_loop
  then do
    putStrLn (show index ++ ": " ++ (checkFizzBuzz index))
    loop (index + 1)
  else
    return ()

main = do
  loop 1

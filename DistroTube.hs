-- IMPORTS --
import Data.List
import Text.Read (Lexeme(Char))

-- TYPES --
-- Bool, Int, Integer, Float, Double, Char, [Char], Tuples

-- ::	Bool
-- True and False
trueAndFalse = True && False
trueOrFalse = True || False
notTrue = not(True)
notFalse = not(False)

-- :: Int
-- Whole number: -2^63 -> (2^63 -1)
biggestInt :: Int
biggestInt = maxBound :: Int
smallestInt :: Int
smallestInt = minBound :: Int

-- :: Integer
-- Unbounded whole number
numFive :: Integer -- Good practice to use explicit types
numFive = 5
numFive' = 5.0 :: Float -- Also allowed
boolFive = 5 < 4

myFloat :: Float -- Haskell defaults to Double
myFloat = 1.0 + 2.5

myDouble :: Double
myDouble = 1.55555555555 + 0.00000000001

-- :: Char
-- Single characters within single quotes
singleChar :: Char
singleChar = 'a' :: Char

myName :: [Char]
myName = "rik"

myName' :: [Char]
myName' = ['r', 'i', 'k']

-- MATH
-- +, -, *, /, div, mod, sqrt,
-- truncate, ceiling, floor, round,
-- exp, log, sin, cos, tan, asin, acos, atan,
-- pi

addNum = 3 + 6
subNum = 3 - 6
multNum = 3 * 6
divNum = 3 / 6

modNum = mod 6 3
modNum' = 3 `mod` 6

addNeg = 4 + (-5)

truncDouble = truncate 3.56798

squareFive = sqrt numFive'

-- :: [LISTS]

numList = [1,2,3,4,5] -- Numbers
alphaList = ['a','b','c'] -- Characters

numList' = [1..5] -- Nums with range
alphaList' = ['a'..'z'] -- Chars with range

evenNums = [2,4..20] -- Nums with range and step
oddAlpha = ['a','c'..'z'] -- Chars with range and step

sumNumList = sum [1..7] -- Sum of list of numbers
sumNumList' = sum numList -- Sum of numList

prodNumList = product [1..7] -- Product of list of numbers
prodNumList' = product numList -- Product of numList

elemList = elem 5 numList -- Returns if element 5 is in numList 
elemList' = 5 `elem` numList

fibNumbers = [0,1,1,2,3,5,8,13] -- Fibonacci numbers
moreFibs = [21,34,55,89,144] -- More fibonacci numbers
combineFibs = fibNumbers ++ moreFibs -- Combined fibonacci numbers

maxFib = maximum combineFibs -- Maximum fibonacci number
minFib = minimum combineFibs -- Minimum fibonacci number

twoLists = [fibNumbers, moreFibs] -- List of fibonacci numbers

myZip = zipWith (+) [1,2,3,4,5] [6,7,8,9,10] -- Performs + in each element

infOdds = [1,3..]
takeOdds = take 20 infOdds -- Takes the first 20 elements
infFives = repeat 5 -- Repeats 5 infinitly
takeFives = take 20 infFives
replFive = replicate 20 5 -- Replicates 5 20 times
cycleFibs = cycle combineFibs -- Cycles through combineFibs infinitly
takeCycle = take 50 (cycle [1,2,3,4,5,6,7,8,9,10]) -- Takes 50 elements
takeCycle' = take 50 $ cycle [1,2,3,4,5,6,7,8,9,10] -- Does the same thing
dropFibs = drop 5 combineFibs -- Drops 5 elements from combineFibs

filterFibs = filter (>5) combineFibs -- Filters the elements greater than 5
whileFibs = takeWhile (<=88) combineFibs -- Takes elements up to 88

mapList = map (*2) [1..10] -- Performs *2 in each element of the list

unorderdList = [545,2,34,87,3,897,56,13] -- Unordered list
sortList = sort unorderdList -- Sorts the list

-- head - Returns the first element
-- tail - Returns from the second up to the last element
-- last - Returns the last element
-- init - Returns up to the last element

multiList = foldr (*) 2 [2,3,4,5]
-- foldr f e ([])
-- 2 * (3 * (4 * (5 * 2)))
minusList = foldl (-) 2 [2,3,4,5]
-- (((((2) -5) -4) -3) -2)
sumFold = foldl (+) 0 [1..100]
-- same as sum [1..100]

consList = 1 : 2 : 3 : [] -- : operator prepends lists

infFibs = 0 : 1 : zipWith (+) infFibs (tail infFibs) -- Fibonacci numbers
takeFibs = take 50 infFibs -- Takes first 50 fibonacci numbers

listFunc = [x * y | x <- [1..5], y <- [1..5]] -- Multiplication table up to 5
listFunc' = [x * y | x <- [1..5], y <- [1..5], x * y `mod` 3 == 0]

-- TUPLES

myTuple = ("John Doe", 1)
getName = fst myTuple -- Gets first element of a tuple
getId = snd myTuple -- Gets second element of a tuple

empNames = ["John Doe", "Jane Doe", "Mary Jane", "Ben Dover"]
empID = [1,2,3,4]
empList = zip empNames empID -- Creates tuple out of lists

add a b = a+b
multiply a b = a*b
funcAri a b c = add (multiply a b) c

sayHello = "Hello World!"

nonUpper :: [Char] -> [Char]
nonUpper s = [c | c <- s, elem c ['a'..'z']]

main = do
  let s = nonUpper "Derek is the best!"
  print(s)

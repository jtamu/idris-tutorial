awesomeFunction: String -> Integer
awesomeFunction s = ?hole

awesomeValue : Integer
awesomeValue =
    let tmp = awesomeFunction ?arg
    in tmp + 1

data FizzBuzz = F | B | FB | Number Integer

show' : FizzBuzz -> String
show' F = "Fizz"
show' B = "Buzz"
show' FB = "FizzBuzz"
show' (Number n) = show n

data IntList = Cons Integer IntList | Nil

intList : IntList
intList = Cons 1 (Cons 2 (Cons 3 Nil))

length : IntList -> Integer
length Nil = 0
length (Cons _ xs) = 1 + length xs

record Person where
    constructor MkPerson
    age: Int
    name: String

incAge : Person -> Person
incAge = record { age $= (+ 1) }

-- IntList : Type
-- IntList = List Int

-- the : (a : Type) -> (value : a) -> a
-- three = the Nat 3

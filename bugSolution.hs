```haskell
import Data.List (sort)

main :: IO ()
main = do
  let xs = [1, 2, 3, 4, 5]
  let ys = sort xs --This works because Int already implements Ord
  print ys 

-- Example with custom data type
data Person = Person {name :: String, age :: Int} deriving (Show, Eq)
instance Ord Person where
  (Person n1 a1) <= (Person n2 a2) = (a1, n1) <= (a2, n2) -- Sort by age, then name

main2 :: IO ()
main2 = do
  let people = [Person "Alice" 30, Person "Bob" 25, Person "Charlie" 30]
  let sortedPeople = sort people
  print sortedPeople
```
# Haskell Sorting Error: Unspecified Ordering
This repository demonstrates a common error in Haskell when sorting lists: forgetting to define the ordering of elements using the `Ord` typeclass.

The `bug.hs` file contains code that attempts to sort a list of integers without explicitly specifying how the elements should be ordered.  This results in a compile-time error.

The `bugSolution.hs` file provides a corrected version of the code, showing how to correctly sort a list by implementing the `Ord` typeclass (which is implicitly done for integers).
--generates a reversed list of the fib sequence
fib1 :: (Integral a) => [a] -> [a]
fib1 [] = [1]
fib1 [1] = [1, 1]
fib1 (a:b:xs) = a + b : a : b : xs

--generates a forward list of the fib sequence
fib2 :: (Integral a) => [a] -> [a]
fib2 [] = [1]
fib2 [1] = [1,1]
fib2 (xs) =
  let x = last xs
      y = last (init xs)
  in (xs ++ ((x + y) : []))

--reapplies the fib functions on themselves to generate n values of the sequence
apply_n_times :: (Integral a) => a -> ([a] -> [a]) -> [a]
apply_n_times 0 f = []
apply_n_times 1 f = f [] 
apply_n_times n f = f (apply_n_times (n - 1) f)

--example:  apply_n_times 100 fib2

-- this is a rather unsatisfying naive solution, relying on the assumption that 100 
-- numbers of the sequence will include all necessary values.
main = print ( sum [ x | x <- (apply_n_times 100 fib2), x < 4000000 && (mod x 2 == 0)])


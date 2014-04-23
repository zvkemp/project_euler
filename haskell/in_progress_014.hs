--theoretically should work, but it leaks memory.
next_collatz :: (Integral a) => a -> a
next_collatz n
  | even n = div n 2
  | otherwise = 3 * n + 1

cc = [collatz x | x <- [1..]] -- collatz cache
collatz 1 = 1
collatz n = 1 + (cc !! ((next_collatz n) - 1))

max_by :: (Ord b) => (a -> b) -> [a] -> a
max_by _ []  = error "empty list"
max_by _ [x] = x
max_by f (x:xs)
  | (f x) > (f max_tail) = x
  | otherwise            = max_tail
  where max_tail = max_by f xs


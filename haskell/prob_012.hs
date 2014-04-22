import Data.List (group)

triangle_numbers = [tri_n x | x <- [1..]]
tri_n :: Int -> Int
tri_n 1 = 1
tri_n n = n + (triangle_numbers !! (n - 2))

-- thanks, http://www.wikihow.com/Determine-the-Number-of-Divisors-of-an-Integer
n_divisors :: Int -> Int
n_divisors n = foldl (*) 1 (map (\xs -> 1 + (length xs)) (group pf))
  where pf = prime_factors n

prime_factors :: (Integral a) => a -> [a]
prime_factors n = pf n 2 []

pf :: (Integral a) => a -> a -> [a] -> [a]
pf 0 _ _ = []
pf 1 _ _ = []
pf x current xs
  | current == x       = current:xs
  | mod x current == 0 = pf (div x current) (current) (current:xs)
  | otherwise          = pf x (current + 1) xs

main = print $ head (filter (\x -> (n_divisors x) > 500) triangle_numbers)

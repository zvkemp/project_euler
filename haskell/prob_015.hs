--Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
--How many such routes are there through a 20×20 grid?


factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n - 1)

combination :: (Integral a) => a -> a -> a
combination n k = div (factorial (n + k)) ((factorial n) * (factorial k))

main = print $ combination 20 20

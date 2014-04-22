--very slow
--[a * b * c | c <- [333..998], b <- [(div (1000 - c - 1) 2)..(1000 - c - 1)], a <- [1..(1000 - c - b)], a < b, b < c, (a + b + c) == 1000, (a^2 + b^2) == c^2]


triplet = head [a * b * c | a <- [1..500], b <- [1..500], let c = sqrt(a^2 + b^2), (a + b + c) == 1000]
main = print $ ceiling triplet

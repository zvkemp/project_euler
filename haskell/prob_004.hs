isPalindromic :: (Show a) => a -> Bool
isPalindromic n = 
  let str = show n
  in str == (reverse str)

largestPalindrome = maximum (filter isPalindromic [ a * b | a <- [999, 998..900], b <- [999,998..900]])

main = print largestPalindrome


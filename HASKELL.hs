import Numeric
f :: Double -> Double
f x = cos(x ** 2) + 1

g :: Double -> Double
g y = y ** 2 - 1

h :: Double -> Double -> Double
h x y = f x + g y

main = do 
   putStrLn "f(x, y) = "  
   print(h 5 5)
import System.Directory.Internal.Prelude (getArgs)

-- Crie uma função chamada área_circ() que receba como argumento o parâmetro raio(r)
-- e retorne o resultado da área de uma circunferência.
-- Considere o uso da constante x_pi estabelecida neste capítulo.
-- Use a operação x_pi * r ^ 2

main = do
  putStrLn "Enter the radius of the circle:"
  radiusStr <- getLine
  let radius = read radiusStr :: Double
  putStrLn $ "The area of the circle with radius " ++ show radius ++ " is " ++ show (areaCirc radius)

areaCirc :: Floating a => a -> a
areaCirc r = pi * r ** 2 


-- To execute use runhaskell 1-circle-area.hs
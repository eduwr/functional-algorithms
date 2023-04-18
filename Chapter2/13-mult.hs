import System.Environment (getArgs)

-- Elabore uma função chamada mult(x, y)
-- que receba como argumento dois valores, x e y e retorne
-- a multiplicação desses valores obtida a partir da ação de
-- recursividade simples com desvio condicional direto

main = do
  args <- getArgs
  let [x, y] = map readInt args
  putStrLn $
    "O produto entre "
      ++ show x
      ++ " e "
      ++ show y
      ++ " é "
      ++ show (mult x y)

readInt :: String -> Integer
readInt = read

-- 1 * 2 = 1 + 2
-- 2 * 3 = 3 + 3
-- 5 * 10 = 10 + 10 + 10 + 10 +10 

mult :: (Num b, Ord b) => b -> b -> b
mult x y
  | y == 0 = 0
  | otherwise = x + mult x (y-1)
-- Para executar use `runhaskell 13-mult.hs 5 10`
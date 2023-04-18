import System.Environment (getArgs)

-- Elabore uma função recursiva chamada negativo(n)
-- que receba como argumento um valor numérico natural positivo e retorne seu valor correspondente
-- negativo. É sabido que para obter um valor negativo, basta multiplicar por "-1".
-- No entanto, este exercício não deve ser realizado por multiplicação,
-- use subtração. Se o valor fornecido for negativo, este deverá ser mantido como negativo.

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O negativo de "
      ++ show n
      ++ " é "
      ++ show (negativo n)

readInt :: String -> Int
readInt = read

-- 5 -> 5 - 5 - 5

negativo :: Int -> Int
negativo n
  | n == 0 = 0
  | n > 0 = negativo (n - 1) - 1
  | otherwise = n

-- Para executar use `runhaskell 17-negativo.hs 3`

import System.Environment (getArgs)

-- Elabore uma função chamada eq1grau(a, b)
-- para realizar o cálculo da equaçao de 1 grau (ax + b = 0)

main = do
  args <- getArgs
  let [a, b] = map readDouble args
  putStrLn $ "O valor de x para satisfazer a expressão (ax + b = 0) é " ++ show (eq1grau a b)

readDouble :: String -> Float
readDouble = read

eq1grau :: Fractional a => a -> a -> a
eq1grau a b = -b / a

-- Para executar use `runhaskell 17-eq1grau.hs 5 10`
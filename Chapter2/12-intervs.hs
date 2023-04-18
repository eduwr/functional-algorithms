import System.Environment (getArgs)

-- Elabore uma função chamada intervs(m, n)
-- que receba como argumento dois valores inteiros, m e n e retorne
-- o somatório de todos os valores numéricos do intervalo especificado
-- Use recursividade simples com desvio condicional DIRETO

main = do
  args <- getArgs
  let [m, n] = map readInt args
  putStrLn $
    "O somatório de todos os valores no intervalo "
      ++ show m
      ++ ":"
      ++ show n
      ++ " é "
      ++ show (intervs m n)

readInt :: String -> Integer
readInt = read

intervs :: (Num b, Ord b) => b -> b -> b
intervs m n
  | m < n - 1 = m + intervs (m + 1) n
  | m > n = error "m must be bigger than n"
  | otherwise = m + n

-- Para executar use `runhaskell 12-intervs.hs 5 10`
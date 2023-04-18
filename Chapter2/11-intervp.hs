import System.Environment (getArgs)

-- Elabore uma função chamada intervp(m, n)
-- que receba como argumento dois valores inteiros, m e n e retorne
-- o produto de todos os valores numéricos do intervalo especificado
-- Use recursividade simples com desvio condicional DIRETO

main = do
  args <- getArgs
  let [m, n] = map readInt args
  putStrLn $
    "O produto de todos os valores no intervalo "
      ++ show m
      ++ ":"
      ++ show n
      ++ " é "
      ++ show (intervp m n)

readInt :: String -> Integer
readInt = read

intervp :: (Num b, Ord b) => b -> b -> b
intervp m n
  | m < n - 1   = m * intervp (m + 1) n
  | m > n       = error "m must be bigger than n"
  | otherwise   = m * n

-- Para executar use `runhaskell 11-intervp.hs 5 10`
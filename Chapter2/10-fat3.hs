import System.Environment (getArgs)

-- Elabore uma função chamada fat3(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o restultado do fatorial deste valor.
-- Efeture a solução com o uso de recursividade de cauda
-- a partir da definição de desvio condicional INDIRETO

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O fatorial de "
      ++ show n
      ++ " é "
      ++ show (fat3 n 0)

readInt :: String -> Integer
readInt = read

fat3 :: Integer -> Integer -> Integer
fat3 0 prev = prev
fat3 n 0 = fat3 (n - 1) n
fat3 n prev = fat3 (n - 1) (n * prev)

-- Para executar use `runhaskell 10-fat3.hs 5`
import System.Environment (getArgs)
 
-- Elabore uma função chamada fat2(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o restultado do fatorial deste valor.
-- Efeture a solução com o uso de recursividade simples
-- a partir da definição de desvio condicional DIRETO
 

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O fatorial de "
      ++ show n
      ++ " é "
      ++ show (fat2 n)

readInt :: String -> Integer
readInt = read

fat2 :: Integer -> Integer
fat2 n = case n of
  0 -> 0
  1 -> 1
  _ | n < 0 -> error "Input must be non-negative"
    | otherwise -> n * fat2 (n - 1)


-- Para executar use `runhaskell 6-fat2.hs 5`
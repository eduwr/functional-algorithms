import System.Environment (getArgs)
 
-- Elabore uma função chamada fatduplo(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o restultado do duplo fatorial ou fatorial duplo deste valor.
-- O duplo fatorial é o produto dos numeros de 1 até o número limite fornecido de 2 em 2
-- O fatorial duplo de 7 é 7 * 5 * 3 * 1 = 105.
-- Use recursividade simples com desvio condicional indireto
 
 
main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O fatorial de "
      ++ show n
      ++ " é "
      ++ show (fatduplo n)

readInt :: String -> Int
readInt = read

fat :: Int -> Int
fat 0 = 0
fat 1 = 1
fat n = fat(n - 1) * n

fatduplo 0 = 0
fatduplo 1 = 1
fatduplo 2 = 2
fatduplo n = fatduplo(n - 2) * n


-- Para executar use `runhaskell 7-fatduplo.hs 5`
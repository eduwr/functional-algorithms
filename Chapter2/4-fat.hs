import System.Environment (getArgs)
 
-- Elabore uma função chamada fat(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o restultado do fatorial deste valor.
-- Se fornecido o valor 5 a função deve apresentar o resultado 120 (para 1*2*3*4*5).
-- Efeture a solução com o uso de recursividade simples
-- a partir da definição de desvio condicional indereto
 

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O fatorial de "
      ++ show n
      ++ " é "
      ++ show (fat n)

readInt :: String -> Int
readInt = read

somat :: Int -> Int
somat 0 = 0
somat n = n + somat(n - 1)

fat :: Int -> Int
fat 0 = 0
fat 1 = 1
fat n = fat(n - 1) * n 


-- Para executar use `runhaskell 4-fat.hs 5`
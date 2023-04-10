import System.Environment (getArgs)

-- Elabore uma função chamada somat(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o somatório de 1 até o valor fornecido.
-- Se fornecido o valor 5, a função deve apresentar o resultado 15
-- (para 1 + 2 + 3 + 4 + 5). Efetue a solução com o uso de recursividade simples
-- a partir da definição de desvio condicional indireto.
 

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O somatório de 1 até "
      ++ show n
      ++ " é "
      ++ show (somat n)

readInt :: String -> Int
readInt = read

somat :: Int -> Int
somat 0 = 0
somat n = n + somat(n - 1)

-- Para executar use `runhaskell 3-somat.hs 5`
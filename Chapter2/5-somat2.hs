import System.Environment (getArgs)
 

-- Elabore uma função chamada somat2(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o somatório de 1 até o valor fornecido.
-- Efetue a solução com o uso de recursividade simples a partir da definição
-- de desvio condicional direto
 
 

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O somatório de 1 até "
      ++ show n
      ++ " é "
      ++ show (somat2 n)

readInt :: String -> Int
readInt = read

somat2 n = case n of
  0 -> 0
  n -> n + somat2(n - 1)


-- Para executar use `runhaskell 5-somat2.hs 5`
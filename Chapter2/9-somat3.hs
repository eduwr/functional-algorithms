import System.Environment (getArgs)

-- Elabore uma função chamada somat3(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o somatório de 1 até o valor fornecido.
-- Efetue a solução com o uso de recursividade de cauda a partir da definição de
-- desvio codicional indireto

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O somatório de 1 até "
      ++ show n
      ++ " é "
      ++ show (somat3 n 0)

readInt :: String -> Integer
readInt = read

somat3 :: Integer -> Integer -> Integer
somat3 0 prev = prev
somat3 n prev = somat3 (n - 1) (n + prev)
-- Para executar use `runhaskell 9-somat3.hs 5`
-- Elabore uma função chamada ant(x) que receba como argumento o parâmetro
-- de um valor numérico inteiro e retorne o resultado do seu valor antecessor-- Elabore uma função chamada suc(x) que receba como argumento o parâmetro de um valor numérico
-- inteiro e retorne o resultado de seu valor sucessor

ant :: Int -> Int
ant = pred

main = do
  putStrLn "Digite um número inteiro:"
  intStr <- getLine
  let int = read intStr :: Int
  putStrLn $ "O antecessor de " ++ show int ++ " é " ++ show (ant int)

-- Para executar use `runhaskell 11-ant.hs`
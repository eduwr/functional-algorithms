import System.Environment (getArgs)

-- Elabore uma função chamada são_iguais(a, b) que receba como argumento dois parâmetros "a" e "b"
-- e retorne .verdadeiro. se os valores forem iguais, ou falso,
-- se os valores forem diferentes

main = do
  args <- getArgs
  case args of
    [a, b] -> do
      let x = read a :: Int
          y = read b :: Int
      ( if saoIguais x y
          then (do putStrLn "Os valores são iguais")
          else (do putStrLn "Os valores NÃO são iguais")
        )
    _ -> putStrLn "Por favor, informe dois argumentos inteiros."

saoIguais :: Eq a => a -> a -> Bool
saoIguais a b = a == b

-- Para executar use `runhaskell 10-sao-iguais 1 2`
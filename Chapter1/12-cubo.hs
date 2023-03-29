-- Elabore uma função cubo(x) que receba como argumento o parãmetro
-- de um valor numérico e retorne o resultado do cubo desse valor

main = do
  putStrLn "Digite um número:"
  numStr <- getLine
  let num = read numStr :: Double
  putStrLn $ "O número " ++ show num ++ " ao cubo é " ++ show (cubo num)

-- Para executar use `runhaskell 12-cubo.hs`

cubo :: Double -> Double
cubo x = x ^ 3
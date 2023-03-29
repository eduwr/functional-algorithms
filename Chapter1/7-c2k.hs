-- Elabore uma função chamada c2k(c) que receba como argumento
-- o parâmetro de um valor numérico que represente uma temperatura
-- Celsius e retorne o resultado em graus Kelvin. Use a operação
-- c + 273.15

main = do
  putStrLn "Insira uma temperatura em ºC:"
  tempString <- getLine
  let temp = read tempString :: Double
  putStrLn $ "A temperatura " ++ show temp ++ " ºC " ++ "corresponde à " ++ show (c2k temp) ++ " K"

c2k :: Double -> Double
c2k c = c + 273.15

-- Para executar use `runhaskell 7-c2k.hs`
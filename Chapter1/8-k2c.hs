-- Elabore uma função chamada k2c(k) que receba como argumento
-- o parâmetro de um valor numérico que represente uma temperatura
-- Kelvin e retorne o resultado em graus Celsius. Use a operação
-- k - 273.15

main = do
  putStrLn "Insira uma temperatura em Kelvin:"
  tempString <- getLine
  let temp = read tempString :: Double
  putStrLn $ "A temperatura " ++ show temp ++ " K " ++ "corresponde à " ++ show (k2c temp) ++ " ºC"

k2c :: Double -> Double
k2c k = k - 273.15

-- Para executar use `runhaskell 8-k2c.hs`
-- Elabore uma função chamada f2c(f) que receba como argumento
-- o parâmetro de um valor numérico que represente uma temperatura
-- Fahrenheit e retorne o resultado em graus Celsius. Use a operação
-- (f-32)*5/9

main = do
  putStrLn "Insira uma temperatura em ºF:"
  tempString <- getLine
  let temp = read tempString :: Double
  putStrLn $ "A temperatura " ++ show temp ++ " ºF " ++ "corresponde à " ++ show (f2c temp) ++ " ºC"

f2c :: Double -> Double
f2c f = (f - 32) * 5 / 9

-- Para executar use `runhaskell 6-f2c.hs`
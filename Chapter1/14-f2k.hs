-- Elabore uma função chamada f2k(k) que receba como argumento
-- o parâmetro de um valor numérico que represente uma temperatura
-- Kelvin e retorne o resultado em graus Fahrenheit. Use a operação
-- (f-32)*5 / 9 + 273.15

main = do
  putStrLn "Insira uma temperatura em Fahrenheit"
  tempStr <- getLine
  let temp = read tempStr :: Double
  putStrLn $ "A temperatura " ++ show temp ++ " ºF " ++ "corresponde à " ++ show (f2k temp) ++ " K"

f2k :: Double -> Double
f2k f = (f-32)*5 / 9 + 273.15

-- Para executar use `runhaskell 14-f2k.hs`
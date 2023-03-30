-- Elabore uma função chamada k2f(k) que receba como argumento
-- o parâmetro de um valor numérico que represente uma temperatura
-- Kelvin e retorne o resultado em graus Fahrenheit. Use a operação
-- (k - 273.15) * 9 / 5 + 32

main = do
  putStrLn "Insira uma temperatura em Kelvin"
  tempStr <- getLine
  let temp = read tempStr :: Double
  putStrLn $ "A temperatura " ++ show temp ++ " K " ++ "corresponde à " ++ show (k2f temp) ++ " ºF"

k2f :: Double -> Double
k2f k = (k - 273.15) * 9 / 5 + 32

-- Para executar use `runhaskell 13-k2f.hs`
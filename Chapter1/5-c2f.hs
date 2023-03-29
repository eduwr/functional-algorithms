-- Elabore uma função chamada c2f(c) que receba como argumento
-- o parâmetro de um valor numérico que represente uma temperatura
-- Celsius e retorne o resultado em graus Fahrenheit. Use a operação
-- (c * 9 / 5) + 32


main = do
  putStrLn "Insira uma temperatura em ºC:"
  tempString <- getLine
  let temp = read tempString :: Double
  putStrLn $ "A temperatura " ++ show temp ++ " ºC " ++ "corresponde à " ++ show (c2f temp) ++ " ºF"


c2f :: Double -> Double
c2f c = (c * 9 / 5) + 32

-- Para executar use `runhaskell 5-c2f.hs`
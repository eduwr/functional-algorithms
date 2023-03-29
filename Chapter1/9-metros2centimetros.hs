-- Elabore uma função chamada metros2centrimetros(m) que receba como argumento
-- o parâmetro de um valor numérico que represente uma quantidade de medida
-- em metros e retorne o valor da quantidade em centímetros

main = do
  putStrLn "Insira uma medida em metros:"
  mString <- getLine
  let m = read mString :: Double
  putStrLn $ "A medida " ++ show m ++ " m " ++ "corresponde à " ++ show (metros2centrimetros m) ++ " cm"

metros2centrimetros :: Double -> Double
metros2centrimetros = (100 *)

-- Para executar use `runhaskell 9-metros2centimetros.hs`
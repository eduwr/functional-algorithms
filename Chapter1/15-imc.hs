-- Elabore uma função chamada imc(p, a) que receba como argumento
-- dois parâmetros representando o peso "p" e a altura "a" de uma pessoa
-- e mostre o seu IMC (índice de massa Corporal). Considere a fórmula
-- p / a ^ 2

main = do
  putStrLn "Insira o seu peso em kg"
  pString <- getLine
  let p = read pString :: Double
  putStrLn "Insira a sua altura em m"
  aString <- getLine
  let a = read aString :: Double
  putStrLn $
    "O seu IMC com base no peso "
      ++ show p
      ++ " kg "
      ++ " e altura "
      ++ show a
      ++ " m "
      ++ " é  igual a "
      ++ show (imc p a)

imc :: Fractional a => a -> a -> a
imc p a = p / a ^ 2

-- Para executar use `runhaskell 15-imc.hs`
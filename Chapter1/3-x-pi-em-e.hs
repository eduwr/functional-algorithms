-- Elabore uma função chamada x_pi_em_e(x) que receba como argumento
-- o parametro de um valor numérico e retorne o resultado deste valor multiplicado
-- pela constante x_pi e dividido pela constante x_e

main = do
  putStrLn "Enter a number:"
  nbrStr <- getLine
  let nbr = read nbrStr :: Double
  putStrLn $ "The result of qsoma is " ++ show (xPiEmEuler nbr)

euler :: Double
euler = exp 1.0

xPiEmEuler :: Double -> Double
xPiEmEuler x = x * pi / euler

-- Para executar use `runhaskell 3-x-pi-em-e.hs`
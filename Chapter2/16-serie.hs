import System.Environment (getArgs)

-- Elabore uma função recursiva chamada serie(n)
-- que calcule o enésimo termo da série definida por:
-- 0, se n=0
-- 3, se n=1
-- 3*serie(n-1)-2, se n> 1

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O enésimo termo da série é "
      ++ show (serie n)

readInt :: String -> Integer
readInt = read

serie n
  | n == 0 = 0
  | n == 1 = 3
  | n > 1 = 3*serie(n-1)-2
  | otherwise = error "n deve ser um numero inteiro"


-- Para executar use `runhaskell 16-serie.hs 3`

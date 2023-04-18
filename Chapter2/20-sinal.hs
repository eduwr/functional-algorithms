import Data.Time.Format.ISO8601 (yearFormat)
import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Crie uma função sinal(X, y) que retorne o valor -1 se 'x' for menor que 'y',
-- que retorne o valor 1 se 'x' maior que 'y' e retorne 0 se 'x' for igual a 'y'

main = do
  args <- getArgs
  let [x, y] = map readInt args
  putStrLn $
    "Os sinal de "
      ++ show x
      ++ " e "
      ++ show y
      ++ " é "
      ++ show (sinal x y)

readInt :: String -> Int
readInt = read

sinal x y
  | x < y = -1
  | x > y = 1
  | x == y = 0

-- Para executar use `runhaskell 20-sinal.hs 13 27`

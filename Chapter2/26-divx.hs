import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Elabore uma função chamada divx(n, d, r) que retorna verdadeiro caso o valor do dividendo "n"
-- ao ser dividido pelo divisor "d" tenha seu resto da divisão igual a 4

main = do
  args <- getArgs
  let [n] = map readInt args
  print $ div82 n

readInt :: String -> Int
readInt = read

div82 :: Integral a => a -> Bool
div82 n
  | n `mod` 8 == 4 =
      True
  | otherwise = False

-- Para executar use `runhaskell 25-div84.hs 343`
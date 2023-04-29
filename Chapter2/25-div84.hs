import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Elabore uma função chamada div84(n) que retorna verdadeiro caso o valor "n" ao ser dividido pro 8 tenha
-- seu resto de didvisão igual a 4

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
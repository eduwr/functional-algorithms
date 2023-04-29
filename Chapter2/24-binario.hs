{-# LANGUAGE BlockArguments #-}

import Data.Time.Format.ISO8601 (yearFormat)
import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Elabore uma função chamada binario(n) para realizar a apresentacao d eum valor numerico inteiro no
-- formato binario. O resultado em binario deve ser armazenado em uma lista.(*)
-- Se executada a operação binario(10) deverá ser apresentado [1, 0, 1]

main = do
  args <- getArgs
  let [n] = map readInt args
  print $ binario [n]

readInt :: String -> Int
readInt = read

binario :: Integral a => [a] -> [a]
binario n =
  case n of
    (0 : xs) -> 0 : xs
    (1 : xs) -> 1 : xs
    (x : xs) -> binario $ divMod2 x ++ xs

divMod2 :: Integral a => a -> [a]
divMod2 x = [x `div` 2, x `mod` 2]

-- Para executar use `runhaskell 24-binario.hs 343`
import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Cre uma função mmc(x, y) para calcular o mínimo múltiplo comum de dois números inteiros
-- Se quiser operar mais valores a função poderá ser encadeada no estilo mmc(x, mmc(y,z))

main = do
  args <- getArgs
  let [x, y] = map readInt args
  putStrLn $
    "Os mmc de "
      ++ show x
      ++ " e "
      ++ show y
      ++ " é "
      ++ show (mmc x y)

readInt :: String -> Int
readInt = read

fatoresPrimos :: Int -> [Int]
fatoresPrimos 1 = []
fatoresPrimos n = fator : fatoresPrimos (n `div` fator)
  where
    fator = menorFatorPrimo n

menorFatorPrimo :: Int -> Int
menorFatorPrimo n = head [x | x <- [2 .. n], n `mod` x == 0]

produtoDosFatoresPrimos :: [Int] -> [Int] -> Int
produtoDosFatoresPrimos [] [] = 1
produtoDosFatoresPrimos xs [] = produto xs
produtoDosFatoresPrimos [] ys = produto ys
produtoDosFatoresPrimos (x : xs) (y : ys)
  | x == y = x * produtoDosFatoresPrimos xs ys
  | x < y = x * produtoDosFatoresPrimos xs (y : ys)
  | otherwise = y * produtoDosFatoresPrimos (x : xs) ys

produto :: [Int] -> Int
produto [] = 1
produto (x : xs) = x * produto xs

mmc :: Int -> Int -> Int
mmc x y = produtoDosFatoresPrimos (fatoresPrimos x) (fatoresPrimos y)

-- Para executar use `runhaskell 19-mmc.hs 13 27`

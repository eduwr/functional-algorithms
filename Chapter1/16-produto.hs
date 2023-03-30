import System.Environment (getArgs)

-- Elabore uma função chamada produto(x, y) que receba como argumento
-- dois parâmetros representados como "x" e "y"
-- e retorne o resultado da multiplicação dos dois valores fornecidos

main = do
  args <- getArgs
  let [x, y] = map readDouble args
  putStrLn $ "O produto entre " ++ show x ++ " e " ++ show y ++ " é " ++ show (produto x y)

readDouble :: String -> Float
readDouble = read

produto :: Num a => a -> a -> a
produto x = (x *)

-- Para executar use `runhaskell 16-produto.hs 5 10`
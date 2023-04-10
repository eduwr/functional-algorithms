import System.Environment (getArgs)

-- Elabore uma função chamada min(x, y)
-- que receba como argumento o parâmetro que represente dois valores numéricos
-- e apresente o menor valor entre os dois fornecidos

main = do
  args <- getArgs
  let [x, y] = map readDouble args
  putStrLn $
    "O menor valor entre "
      ++ show x
      ++ " e "
      ++ show y
      ++ " é "
      ++ show (min' x y)

readDouble :: String -> Float
readDouble = read

min' :: Float -> Float -> Float
min' x y = case x > y of
  True -> y
  False -> x

-- Para executar use `runhaskell 1-min.hs 5 10`
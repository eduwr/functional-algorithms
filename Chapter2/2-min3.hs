import System.Environment (getArgs)

-- Elabore uma função chamada min3(x, y, z)
-- que receba como argumento o parâmetro que represente três valores numéricos
-- e apresente o menor valor entre os três valores fornecidos.
-- Para essa ação faça o efeito de composição  a partir da função min(x, y)

main = do
  args <- getArgs
  let [x, y, z] = map readDouble args
  putStrLn $
    "O menor valor entre ("
      ++ show x
      ++ ", "
      ++ show y
      ++ ", "
      ++ show z
      ++ ") é "
      ++ show (min'' x y z)

readDouble :: String -> Float
readDouble = read

min' :: Float -> Float -> Float
min' x y = case x > y of
  True -> y
  False -> x

min'' :: Float -> Float -> Float -> Float
min'' x y z = (min' z) $ min' x y

-- Para executar use `runhaskell 2-min3.hs 5 10 11`
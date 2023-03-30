import System.Environment (getArgs)

-- Elabore uma função chamada areaRet(lado1, lado2)
-- que receba como argumento os valores das medidas dos lados
-- de um retângulo e devolva o resultado da sua área,
-- ou seja, lado 1 multiplicado pelo lado 2

main = do
  args <- getArgs
  let [a, b] = map readDouble args
  putStrLn $
    "A área do retângulo com lados "
      ++ show a
      ++ " e "
      ++ show b
      ++ " é "
      ++ show (areaRet a b)

readDouble :: String -> Float
readDouble = read

areaRet :: Num a => a -> a -> a
areaRet a = (a *)

-- Para executar use `runhaskell 18-area-ret.hs 5 10`
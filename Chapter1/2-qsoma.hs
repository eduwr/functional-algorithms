import System.Environment (getArgs)

-- Elabore uma função qsoma(a, b) que receba como argumento dois parâmetros
-- "a" e "b" e retorne o resultado do quadrado da soma dos dois valores fornecidos
-- A função deverá efeturar toda a operação dentro de seu escopo de ação
-- sem lançar mão da composição de funções.

main = do
  args <- getArgs
  let [a, b] = map readDouble args
  putStrLn $ "The result of qsoma is " ++ show (qsoma a b)

readDouble :: String -> Float
readDouble = read

qsoma :: Floating a => a -> a -> a
qsoma a b = (a + b) ** 2

-- Para executar use `runhaskell 2-qsoma.hs 1 2`
import System.Environment (getArgs)

-- Elabore uma função chamada potencia_de_2(i)
-- que receba um valor "i" como argumento, o qual representa o índice da potência "i"
-- Se fornecido o valor de "i" como 1 a função deve retornar 2, caso contrário
-- deve realizar o cálculo recursivo simples a partir do desvio condicional indireto.(*)
-- 2, se i = 1
-- 2 * potencia_de_2(n-1), se n>1

main = do
  args <- getArgs
  let [i] = map readInt args
  putStrLn $
    "O dois elevado à potência de "
      ++ show i
      ++ " é "
      ++ show (potencia_de_2 i)

readInt :: String -> Integer
readInt = read

potencia_de_2 :: (Eq t, Num t, Num a) => t -> a
potencia_de_2 1 = 2
potencia_de_2 i = 2 * potencia_de_2 (i - 1)

-- Para executar use `runhaskell 14-potencia_de_2.hs 3`
import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Dois números naturais são primos entre si, ou seja,
-- são coprimos se o MDC (máximo divisor comum) entre eles for igual a 1.
-- Assim sendo, defina uma função chamada coprimo(x,y) que retorne verdadeiro
-- se os valores fornecidos forem coprimos,
-- caso contrário a função deve retornar o resultado falso
-- Se fornecido os valores coprimo(13, 27) o resultado será verdadeiro,
-- já os valores coprimo(13, 26) resulta em falso

main = do
  args <- getArgs
  let [x, y] = map readInt args
  putStrLn $
    "Os números "
      ++ show x
      ++ " e "
      ++ show y
      ++ if coprimo x y
        then " sao coprimos"
        else " nao sao coprimos"

readInt :: String -> Int
readInt = read

-- Algoritmo de Euclides para calcular o mdc
mdc :: Int -> Int -> Int
mdc a b
  | b == 0 = a
  | otherwise = mdc b (a `mod` b)

coprimo :: Int -> Int -> Bool
coprimo x y = case mdc x y of
  1 -> True
  _ -> False

-- Para executar use `runhaskell 18-coprimo.hs 13 27`

import System.Environment (getArgs)

-- COnsiderando o jogo "Torre de Hanói" escreva a função hanoi(n) que apresente a quantidade
-- de movimentos necessários para realizar todas as jogadas com "n" discos.
-- Por exemplo, se usados 3 discos serão necessários 7 movimentos.
-- Use recursividade simples com desvio condicional indireto. Para a realização deste exercício
-- considere a regra:

-- 0, se n = 0
-- 1, se n = 1
-- 2*hanoi(n-1), se n>1

main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "A quantidade de movimentos necessários para realizar todas as jogadas com "
      ++ show n
      ++ " discos é "
      ++ show (hanoi n)

readInt :: String -> Integer
readInt = read

hanoi :: (Eq a, Num a) => a -> a
hanoi 0 = 0
hanoi 1 = 1
hanoi n = 2 * (n - 1)

-- Para executar use `runhaskell 15-hanoi.hs 3`
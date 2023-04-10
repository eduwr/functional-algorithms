import System.Environment (getArgs)
 
-- Elabore uma função chamada fattriplo(n)
-- que receba como argumento o parâmetro de um valor numérico inteiro
-- e apresente o restultado do duplo fatorial ou fatorial duplo deste valor.
-- O duplo fatorial é o produto dos numeros de 1 até o número limite fornecido de 3 em 3
-- O fatorial triplo de 9 é 9 * 6 * 3 = 162.
-- Use recursividade simples com desvio condicional indireto
 
 
main = do
  args <- getArgs
  let [n] = map readInt args
  putStrLn $
    "O fatorial triplo de "
      ++ show n
      ++ " é "
      ++ show (fattriplo n)

readInt :: String -> Integer
readInt = read


fattriplo :: Integer -> Integer
fattriplo 0 = 1
fattriplo 1 = 1
fattriplo 2 = 2
fattriplo n = n * fattriplo(n - 3)


-- Para executar use `runhaskell 8-fattriplo.hs 5`
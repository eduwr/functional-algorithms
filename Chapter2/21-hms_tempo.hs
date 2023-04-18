import Data.Time.Format.ISO8601 (yearFormat)
import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Elabore uma função chamada hms_tempo(h, m, s) para realizar a conversão das horas, minutos e segundos
-- em um valor serial de tempo. Se fornecido os valores hms_tempo(09, 32, 50)
-- deverá retornar o valor serial 34370. Dica: para gerar valor serial de tempo
-- é necessário trazer a segundos os tempos das horas e dos segundos.
-- A função deverá operar as horas entre 0-23, os minutos e segundos entre 0,59
-- Para qualquer valor fornecido fora da faixa aceitável a função deve retornar
-- a mensagem de erro indicando "algum dado fornecido está incorreto"

main = do
  args <- getArgs
  let [h, m, s] = map readInt args
  putStrLn $
    "h:"
      ++ show h
      ++ ":m:"
      ++ show m
      ++ ":s:"
      ++ show s
      ++ " em segundos "
      ++ show (hmsTempo h m s)

readInt :: String -> Int
readInt = read

hmsTempo :: (Ord a, Num a) => a -> a -> a -> a
hmsTempo h m s =
  if outOfRange h m s
    then error "algum dado fornecido está incorreto"
    else h * 60 * 60 + m * 60 + s

outOfRange :: (Ord a1, Ord a2, Ord a3, Num a1, Num a2, Num a3) => a1 -> a2 -> a3 -> Bool
outOfRange h m s = h < 0 || h > 23 || m < 0 || m > 59 || s < 0 || s > 60

-- Para executar use `runhaskell 21-hms_tempo.hs 09 32 50`

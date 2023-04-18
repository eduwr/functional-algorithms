import Data.Time.Format.ISO8601 (yearFormat)
import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Elabore uma função chamada tempo-hms(h, m, s) para realizar a conversão do valor serial de tempo
-- em horas, minutos e segundos . Se fornecido os valores tempo_hms(34370)
-- deverá retornar os valores 09, 32, 50.
-- A função deverá operar o tempo serial correspondente às horas entre 0-23, os minutos e segundos entre 0,59
-- Para qualquer valor fornecido fora da faixa aceitável a função deve retornar
-- a mensagem de erro indicando "algum dado fornecido está incorreto"

main = do
  args <- getArgs
  let [tmp] = map readInt args
  let (h, m, s) = tempoHms tmp
  putStrLn $
    "tmp:"
      ++ show tmp
      ++ " em h:m:s "
      ++ show h
      ++ ":"
      ++ show m
      ++ ":"
      ++ show s

readInt :: String -> Int
readInt = read

convertTime :: Integral c => c -> (c, c, c)
convertTime tmp =
  let hours = tmp `div` 3600
      remainingToMinutes = tmp `mod` 3600
      minutes = remainingToMinutes `div` 60
      seconds = tmp `mod` 60
   in (hours, minutes, seconds)

isOutOfRange :: (Ord a1, Ord a2, Ord a3, Num a1, Num a2, Num a3) => (a1, a2, a3) -> Bool
isOutOfRange (h, m, s) = h < 0 || h > 23 || m < 0 || m > 59 || s > 59

tempoHms :: Integral c => c -> (c, c, c)
tempoHms tmp =
  let hours = tmp `div` 3600
      remainingToMinutes = tmp `mod` 3600
      minutes = remainingToMinutes `div` 60
      seconds = tmp `mod` 60
   in if isOutOfRange (hours, minutes, seconds)
        then error "algum dado fornecido está incorreto"
        else (hours, minutes, seconds)

-- Para executar use `runhaskell 22-tempo_hms.hs 34370`

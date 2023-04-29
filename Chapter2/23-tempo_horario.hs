import Distribution.Simple.Setup (trueArg)
import System.Environment (getArgs)

-- Elabore uma função chamada tempo-horario(comeco, termino) para realizar o cálculo a duraçaõ de tempo em horas,
-- minutos e segundos entre certa hora de entrada e saída.
-- Se o valor do meço da contagem de tempo for maior que o valor do termino a função deve retornar uma mensagem
-- "Início da contagem de tempo é maior que o término"

main = do
  args <- getArgs
  let [comeco, termino] = map readInt args
  let (h, m, s) = tempoHorario comeco termino
  putStrLn $
    "O tempo entre "
      ++ show comeco
      ++ " e "
      ++ show termino
      ++ " é "
      ++ showHour h m s

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

tempoHorario :: Integral c => c -> c -> (c, c, c)
tempoHorario comeco termino = tempoHms $ termino - comeco

showHour :: (Show a1, Show a2, Show a3) => a1 -> a2 -> a3 -> [Char]
showHour h m s =
  show h
    ++ ":"
    ++ show m
    ++ ":"
    ++ show s

-- Para executar use `runhaskell 23-tempo_horario.hs 34370 35370`

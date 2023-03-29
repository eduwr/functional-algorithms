-- Elabore uma função chamada suc(x) que receba como argumento o parâmetro de um valor numérico
-- inteiro e retorne o resultado de seu valor sucessor


suc :: Int -> Int
suc = succ

main = do
    putStrLn "Digite um número inteiro:"
    intStr <- getLine
    let int = read intStr :: Int
    putStrLn $ "O sucessor de " ++ show int ++ " é " ++ show (suc int)

-- Para executar use `runhaskell 4-suc.hs`
{-
    [x² | x <- [1,2,3,4,5,6]] = [1,4,9,16,25,36]

    os elementos [1,2,3,4,5,6] pertencem a x, tal que esses elementos serão elevados
    ao quadrado

    ou seja, para todos os elementos pertencentes a x, podemos manipular eles.

    para melhor compreenção, sempre leia da direita para a esquerda.

-}

-- Escreva uma função que retorne os números de 1 a 10 multiplicado por 2

mult = [x*2 | x <- [1..10]]


-- Multi geradores --

gerar = [(x,y) | x <- [1,2,3], y <- [4,5]]

gerar2 = [x*y | x <- [1,2,3], y <- [4,5]]


-- Guarda --

-- definir uma condição para gerar uma lista

-- gere uma lista de 1 a n elementos e retorne apenas os divisores de 2

divisor :: Int -> [Int]
divisor n = [x | x <- [1..n], x `mod` 2 == 0]

--crie uma função que retorne 'true' se o número for primo ou 'false' se o número n for primo

-- 1⁰ criar função dos divisores de um número
divisores :: Int -> [Int]
divisores n = [x | x <- [1..n], n `mod` x == 0 ] -- pegar o valor n e dividir pelos valores de [1 .. n]. Retorna os divisores de n 
 
-- 2⁰ Usar a função divisores para retornar apenas os números [1,n]
primos :: Int -> Bool
primos n = divisores n == [1,n] -- Aqui eu faço uma comparação, se o retorno da minha função será de apenas [1,n]

--crie uma função que retorne apenas os números primos de [1..n]

retornePrimos :: Int -> [Int]
retornePrimos n = [x | x <- [1..n], primos x]
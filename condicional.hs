
maiores a b =
	if a > b then a
	else b

-- Uma outra forma de fazer:
-- Ou "a"  é maior que "b", então retorna o "a", ou o "b" é maior que o "a", então retorna o "b"

maiores_2 a b | a > b = a
				| b > a = b
				| otherwise = 0


-- 1 )Crie uma função para saber se um número é par.

par a = if mod a 2 == 0 then True  else False

--  2 )Crie uma função que retorne se um caractere pe maísculo ou minusculo

charcase :: Char -> String
charcase ch 
			| ch >= 'a' && ch <= 'z' = "Minusculo"
			| ch >= 'A' && ch <= 'Z' = "Minusculo"
			| otherwise = "Caractere inváidolido"

-- 3)Crie uma função que receba três valores a b c
-- Se 'a' for igual a 0 deve ser calculado a expressão: b^2 + 3*c;
-- Se 'a' for igual a 1 deve ser calculado a expressão 2*c^2-3*c
--Se 'a' for igual a 2 deve ser calculado a expressão 3*c - b^2
--Para outros vlores de 'a', deve retornar zero.

valores a b c 
			| a == 0 = b^2 + 3*c
			| a == 1 = 2*c^2-3*c
			| a == 2 = 3*c - b^2
			| otherwise = 0



















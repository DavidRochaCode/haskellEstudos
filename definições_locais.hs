-- Usando o where (onde)podemos definir uma 'variável'

--Criar uma função que calcula a área de um triangulo

area :: Float-> Float -> Float -> Float
area a b c = sqrt(s*(s-a)*(s-b)*(s-c))
	where 
		s = (a+b+c)/2


--Escreva uma função em Haskell que retorna a quantidade de raízes distintas de uma equação do segundo grau 
--Assumindo que o coeficiente do termo de grau nunca seja igual a zero.)

--A equação é:

--a.x² + b.x + c = 0

--E o discrimante, geralmente conhecido como "delta", é dado por:

--Delta = b² - 4.a.c

--Lembre-se que, se o doscrimante for igual a 0,há apenas uma raíz real, caso seja positivo, há duas raízes reais distintas
--se for negativo, não há raízes reais para a equação. Utilize guardas!



equacao a b c
	| delta > 0 = 2
	| delta == 0 = 1
	| otherwise = 0
	 where
	delta = b*b - 4*a*c


--Também é possível fazer definições locais escrevendo-se uma expressão "let" e "in"

--EX:

--let x = 4+6 in (x*x) + 2*x - 4 -- Que x seja igual a 4+6 na expressão (x*x) + 2*x - 4.

--let x = 3+2; y = 5-1 in (x*x) + 2*x - y -- Que x seja 3+2 e y seja 5-1 na expressão (x*x) + 2*x - y

--let quadrado x = x*x in quadrado 10 -- Aqui teremos 10*10 




--Vejamos um exemplo de uma função que calcula a área da superfície, escrita a baixo:

--Calcule a área do cilindro a partir de dois valores:
-- raio da base e -- altura do cilindro

areacilindro r h = let arealado = 2*pi*r*h; areabase = pi*r*r 
				   in arealado + 2*areabase

--A diferença é que com o "where", as definições são colocadas no final, e com o "let" 
--elas são colocadas no inicio

--"let" é uma expressão e pode ser utilizada em qualquer lugar onde se espera uma expressão.
--Já "where" não é uma expressão, podemdo ser utilizada apenas para fazer definições locais
--em uma definição de função.


-- vamos criar a função de area do primeiro exemplo, porém com o let

area2 a b c = let s = (a+b+c)/2 in sqrt (s*(s-a)*(s-b)*(s-c))



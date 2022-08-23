-- Em haskell não existe estrutura de repetição. Desse modo, usamos a função recursiva.
--É uma função definida em termos dela mesma. Possui três partes:

-- A partição do problema em subproblemas;
-- A base final de recurção, quando os problemas são tão pequenos que podem ser 
--resolvidos diretamente, geralmente de maneira trivial (caso base);
-- A combinação das respostas parciais, formando a resposta total.

--Ex. com um cálculo fatorial

fatorial :: Integer -> Integer
fatorial n
    | n == 0 = 1
    | n > 0 = fatorial (n-1) * n

--Nas definições:
    -- O primeiro guarda estabele que o fatorial de 0 é 1 (caso base)
    -- O segundo guarda estabelece que o fatorial de um numero positivo é o produto
    --deste numero e do fatorial de seu antecessor. Esse é o caso recursivo e geral


-- explicação de como seria um fatorial

{-

fatorial 5
[fatorial 4] * 5
[(fatorial 3) * 4] *5
[(((fatorial 2)*3)*4)] *5
[(((fatorial 1)*2)*3)*4] *5
[((((fatorial 0)*1)*2)*3)*4] *5

-}
-- Exercicios--

--crie uma função recursiva para calcular a potência de um npumero
potencia x y 
    | y == 0 = 1 -- > caso base
    | otherwise = x * (potencia x (y-1))


-- Crie uma função para dizer se um número é par. Ela deve retornar True ou False

par n = mod n 2 == 0

-- Crie funções recursiva para informar o valor de um somatorio dado um número N

somatorio n 
        | n == 0 = 0
        | otherwise = n + somatorio (n-1)

{-
 - Usando o banco de dados abaixo, faça uma função recursiva que dado o ´id´ limite, 
 deve-se pecorrer todos os dados do banco de dados do primeiro até esse valor final e retorne:

  a) quantas pessoas foram selecionadas na base de dados
  b) qual a menor idade da base 
  c) qual a soma da idade das pessoas 
  d) qual a média da idade
  e) quantas pessoas estão acima da média da idade
-}

type Nome = String
type Idade = Int
type Peso = Float
type Esporte = String
type Pessoa = (Nome,Idade,Peso,Esporte)

bancoDeDados :: Int -> Pessoa
bancoDeDados id
            | id == 1 = ("David", 24, 75, "Volei")
            | id == 2 = ("Jessica", 25, 80, "queimado")
            | id == 3 = ("Adalto", 54, 56, "Dormir")
            | otherwise = ("nao identificado", 0, 0, "0")


-- a)

selectP x 
        | x == 1 = 1
        | otherwise = 1 + selectP (x-1)

-- b)

getAge (_,x,_,_) = x
menorIdade x y -- Função para pegar o que tem a menor idade
    | l1 > l2 = l1
    | otherwise = l2
        where 
            l1 = getAge x
            l2 = getAge y
youngstOne :: Int -> Pessoa
youngstOne n
        | n == 1 = bancoDeDados 1
        | otherwise = menorIdade (bancoDeDados n) (youngstOne (n-1))
    











        

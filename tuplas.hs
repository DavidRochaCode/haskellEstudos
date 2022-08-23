-- crie uma função que pegue o primeiro e o segundo elemento de uma tupla
primeiro (x,_) = x
segundo (_,x) = x

--Criando estruturas de dados. Usamos a palavra type

type Sequencia = String --criamos um 'tipo' >sequencia de caracteres< do tipo Strings
type Estacoes = (Sequencia, Sequencia, Sequencia, Sequencia) -- tudo que eu declarar como >estacoes< eu vou ter uma tupĺa com 3 campos,
--onde cada campo vai ser do tipo Sequencia

--crie uma função de estações do ano usando as tipagens definidas
estacoes_ano :: Estacoes
estacoes_ano = ("Inverno","Verao","Primavera", "Outono")

--crie uma funçao que só pegue a primeira estação
primeira:: Estacoes -> Sequencia
primeira  (x,_,_,_) = x 


 --  EXERCICIOS --

 {-
    1-Crie um trecho de script que contenha a definição de tipo para nome, idade, peso e esporte praticado. Logo em seguida defina outro
    tipo de dados que represente pessoas com as quatros informações
 -}

type Nome = String
type Idade = Int
type Peso = Float
type Esporte = String
type Pessoa = (Nome,Idade,Peso,Esporte)


 {-
    2-Crie uma função chamada bancoDeDados que recebe um "id" do tipo inteiro e retorne uma pessoa. Dentro dessa função faça
    uma instrução condicional para várias pessoas diferentes com identificadores diferentes.
 -}

bancoDeDados :: Int -> Pessoa
bancoDeDados id
            | id == 1 = ("David", 24, 75, "Volei")
            | id == 2 = ("Jessica", 25, 80, "queimado")
            | id == 3 = ("Adalto", 54, 56, "Dormir")
            | otherwise = ("nao identificado", 0, 0, "0")

{-
    3-Crie funções para recuperar o nome, por meio do ID, de uma pessoa.
-}

getNome :: Pessoa ->Nome
getNome (x,_,_,_) = x

{-
    4-Crie uma função que recebe duas pessoas e retorne o nome da mais nova. 
-}

idade1 :: Pessoa -> Idade
idade2 :: Pessoa -> Idade
idade1 (_,x,_,_) = x
idade2 (_,x,_,_) = x
pessoaNova :: Pessoa -> Pessoa -> Idade
pessoaNova x y -- x e y será a tupla que eu irei passar como parâmetro no termonal
            | idade1 x < idade2 y = idade1 x
            | otherwise = idade2 y
            







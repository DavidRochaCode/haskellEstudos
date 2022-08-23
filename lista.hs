--para criar uma lista, basta por os seus inteiros ou caracteres dentro de chaves

lista1 = [1,2,3,4]

-- Caso vc esteja criando uma lista com interios que sejam uma sequência óbvia: de um em um, de 2 em dois... basta
--você fazer da seguinte maneira:

lista2 = [1,2..10] -- vai contar de um em um até 10
lista3 = [2,4..10] --vai contar de 2 em 2 até 10

--na lista, o 'head' seria o primeiro elemento da lista, e o tail seria o segundo.

-- para concatenar uma lista, baixa usar ++

lista4 = [1,2,3] ++ [4,5,6]

-- ou
lista5 = [1,2,3]
lista6 = [4,5,6]
lista7 = lista5 ++ lista6

-- Se eu quiser saber os pares ou os impares da minha lista, eu escrevo "pares" ou "impares"
--
-- Exemplo para saber o comprimento de uma lista:

compr :: [Int] -> Int
compr [] = 0
compr(h:t) = 1 + compr t --o primeiro elmento (que terá valor 1 ) mais o ultimo elemento (tail)

--Porgrama que recebe um lista e retorna outra com os núemros ao cubo

aoCubo :: Int -> Int
aoCubo x = x*x*x


--cubo :: [Int] -> [Int]
--cubo [] = [] 
--cubo (h:t) = aoCubo (h) : aoCubo t

--saber o somatório dos elementos de dentro de uma lista

soma :: [Int] -> Int
soma [] = 0
soma(h:t) = h + soma t




                -- funções--

-- (**) >> concatena duas ou mais listas 
-- [1,2,3] ++ [4,5,6] = [1,2,3,4,5,6]

-- concat >> recebe uma lista de listas e as concatena.
-- concat [[1,2],[3,4]] = [1,2,3,4]

--elem >> Verifica se um elemento pertence a lista.
-- elem 5 [1,5,10] = true

--null >> retirna true se uma lista é vazia.
-- null[] = true

--length >> tamanho de uma lista.
-- length "david" = 5

--head >> retorna o primeiro elemento de uma lista.
--head [1,2,3,4] = 1

--last >> retorna o ultimo elemento de uma lista.
--last [1,2,3,4] = 4

--tail >> retona o corpo da lista.
--tail [1,2,3,4] = [2,3,4]

--(!!) operador de indice da lista. Retorna o elemento mantido numa posição
--(!!)[1,2,3,5,6] 2 = 3

--reverse >> reverso da lista
--reverse [1,2,3,4] = [4,3,2,1]

--product >> retorna o produto dos elementos de uma lista
--product[1,2,3] = 6

--maximum >> retorna o maior elemento
--maximum[3,4,7,5] = 7

--minumum >> retorna o menor elemento
--minimum[4,7,5,3] = 3

--take >> gera uma lista com os n primeiros elementos da lista
--take 5 [3,5,8,7,6,4,3] = [3,5,8,7,6]

--drop >> retina n elementos do inicio da lista
--drop 2 [1,2,3,4,5,6] = [4,5,6]

--takeWhile >> retorna o maior elemento segmento inicial de uma lista que satisfaz uma condição
--takeWhile (<10)[1,3,13,4] = [1,3]

--dropWhile >> retira o maior segmento incial de uma lista que satisfaz uma condição
--dropWhile(<10)[1,3,13,4] = [13,4]

--splitAt >> divide uma lista num par de sublista fazendo a divisão numa determinada posição
-- splitAt 2 [3,4,2,1,5] = ([3,4],[2,1,5])

--zip >> recebe duas entradas e retorna uma lista de pares
-- zip[1,2] ['a','b'] = [(1,'a')(2,'b')]






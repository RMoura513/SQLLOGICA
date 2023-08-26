/*
1) Fazer em SQL Server os seguintes algoritmos:
a) Fazer um algoritmo que leia 1 n�mero e mostre se s�o m�ltiplos de 2,3,5 ou nenhum deles
*/
DECLARE @numero		INT
SET @numero = 15

IF (@numero % 2 = 0)
	BEGIN
		PRINT 'O n�mero ' + CAST(@numero AS VARCHAR(10)) + ' � m�ltiplo de 2' 
	END
IF (@numero % 3 = 0)
	BEGIN
		PRINT 'O n�mero ' + CAST(@numero AS VARCHAR(10)) + ' � m�ltiplo de 3'
	END
IF (@numero % 5 = 0)
	BEGIN
		PRINT 'O n�mero ' + CAST(@numero AS VARCHAR(10)) + ' � m�ltiplo de 5'
	END
IF (@numero % 2 <> 0 AND @numero % 3 <> 0 AND @numero % 5 <> 0)
	BEGIN
		PRINT 'O n�mero ' + CAST(@numero AS VARCHAR(10)) + ' n�o � m�ltiplo de 2, 3 ou 5'
	END


/*
b)  Fazer um algoritmo que leia 3 n�meros e mostre o maior e o menor
*/
DECLARE @n1		INT,
		@n2		INT,
		@n3		INT,
		@maior	INT,
		@menor	INT
SET @n1 = 9
SET @n2 = 15
SET @n3 = 3
SET @menor = 0
SET @maior = 0

IF (@n1 > @n2 AND @n1 > @n3)
	BEGIN
		SET @maior = @n1
	END
IF (@n1 < @n2 AND @n1 < @n3)
	BEGIN
		SET @menor = @n1
	END
IF (@n2 > @n1 AND @n2 > @n3)
	BEGIN
		SET @maior = @n2
	END
IF (@n2 < @n1 AND @n2 < @n3)
	BEGIN
		SET @menor = @n2
	END
IF (@n3 > @n2 AND @n3 > @n1)
	BEGIN
		SET @maior = @n3
	END
IF (@n3 < @n2 AND @n3 < @n1)
	BEGIN
		SET @menor = @n3
	END
IF (@maior <> 0 OR @menor <> 0)
	BEGIN
		PRINT 'Maior n�mero digitado: ' + CAST(@maior AS VARCHAR(10))
		PRINT 'Menor n�mero digitado: ' + CAST(@menor AS VARCHAR(10))
	END

/*
c) Fazer um algoritmo que calcule e exiba os 15 primeiros termos da s�rie
      1,1,2,3,5,8,13,21,...
E, posteriormente, calcule e exiba a soma dos 15 termos
*/
DECLARE @numero1		INT,
		@numero2		INT,
		@serie			INT,
		@contador		INT,
		@soma			INT
SET @numero1 = 1
SET @numero2 = 1
SET @contador = 1
SET @serie = @numero1
SET @soma = 0

WHILE(@contador <= 15)
	BEGIN
		PRINT @serie
		SET @soma = @soma + @serie
		SET @serie = @numero1 + @numero2
		SET @numero1 = @numero2
		SET @numero2 = @serie
		SET @contador = @contador + 1
	END
BEGIN
	PRINT 'Soma dos valores da sequ�ncia: ' + CAST(@soma AS VARCHAR(10))
END

/*
d) Fazer um algoritmo que separa uma frase, colocando todas as letras em mai�sculo e em min�sculo
(Usar fun��es UPPER e LOWER). Deve exibir o resultado ao final.
*/
DECLARE @frase NVARCHAR(MAX)
SET @frase = 'Exemplo de Frase Para Transformar'

DECLARE @fraseMaiuscula NVARCHAR(MAX)
DECLARE @fraseMinuscula NVARCHAR(MAX)

SET @fraseMaiuscula = UPPER(@frase)
SET @fraseMinuscula = LOWER(@frase)

SELECT 'Frase Original: ' AS Tipo, @frase AS Frase
UNION ALL
SELECT 'Mai�sculas: ', @fraseMaiuscula
UNION ALL
SELECT 'Min�sculas: ', @fraseMinuscula


/*
e) Fazer um algoritmo que inverta uma palavra (Usar a fun��o SUBSTRING). Deve exibir o resultado ao final
*/
DECLARE @palavra NVARCHAR(MAX)
SET @palavra = 'SQLServer'

DECLARE @tamanho INT
SET @tamanho = LEN(@palavra)

DECLARE @palavraInvertida NVARCHAR(MAX)
SET @palavraInvertida = ''

WHILE @tamanho > 0
BEGIN
    SET @palavraInvertida = @palavraInvertida + SUBSTRING(@palavra, @tamanho, 1)
    SET @tamanho = @tamanho - 1
END

SELECT 'Palavra Original: ' AS Tipo, @palavra AS Palavra
UNION ALL
SELECT 'Palavra Invertida: ', @palavraInvertida







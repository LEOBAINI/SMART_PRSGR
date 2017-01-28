-- drop FUNCTION DESENCRIPTARFIB
CREATE FUNCTION DESENCRIPTARFIB
(
	@password varchar(max)
)

RETURNS varchar(max) 
AS
BEGIN
	
DECLARE @encriptado as varchar(max) --valor de retorno
DECLARE @ASCII table(ASCII int)
DECLARE @input as varchar(max) -- punto de entrada
DECLARE @IND AS INT -- indice
SET @IND=0
SET @input=@password;

-- comienza a recorrer la palabra
while @IND < len(@input) 
BEGIN
SET @IND=@IND+1

--SELECT SUBSTRING(@input,@IND, 1)
INSERT INTO @ASCII SELECT ASCII(SUBSTRING(@input,@IND, 1))-@IND -- mete en la tabla temporal el ascii sumandole el nro (fila nro)


END -- fin codificación ascii

--SELECT *,CHAR(ASCII) AS FIBONACCI FROM @ASCII -- muestro la palabra codificada

----------------------------------------------------fin codificar ------------------------------------------
DECLARE @valores INT
DECLARE @COD_ASCII AS INT
DECLARE @PALABRA AS VARCHAR(MAX)

DECLARE _cursor CURSOR FOR   

SELECT ASCII FROM @ASCII OPEN _cursor  
  
FETCH NEXT FROM _cursor INTO @COD_ASCII -- traemos los ascii modificados
  
WHILE @@FETCH_STATUS = 0  
BEGIN  

if(@PALABRA IS NULL)
BEGIN 
SET @PALABRA=CHAR(@COD_ASCII) 
FETCH NEXT FROM _cursor INTO @COD_ASCII
END  -- SI NO HAGO ESTA VALIDACIÓN SUMAR NULL CON CUALQUIER COSA=NULL 
ELSE
BEGIN

SET @PALABRA=(@PALABRA+char(@COD_ASCII))
FETCH NEXT FROM _cursor INTO @COD_ASCII
--SELECT @PALABRA AS FORMANDOFRASE

END    
   
end

set @encriptado=@PALABRA
CLOSE _cursor  
DEALLOCATE _cursor 


	RETURN @encriptado
 
END
GO
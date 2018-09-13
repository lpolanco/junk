Write a query to print all prime numbers less than or equal to 1000. Print your result on a single line, and use the ampersand (&)
character as your separator (instead of a space)


DECLARE @I INT,@J INT,@RES VARCHAR(8000)
SET @RES = '2';
SET @I = 3;

WHILE @I<1000
    BEGIN
        SET @J = 2;
        WHILE (@J)*(@J)<=@I
            BEGIN
                IF @I%@J=0
                    SET @J = @I+1;
                SET @J = @J+1;
            END
        IF @J<@I
            SET @RES = CONCAT(@RES,'&',@I);
    SET @I = @I+1;
    END

SELECT @RES

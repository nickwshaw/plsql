DECLARE
-- single line comment
-- Global variables
aConstant number := 1;
orderNumber number := 1000;
orderId number default 1001;
customerName VARCHAR2(10) := 'Nick';
BEGIN
/*
Multi line comment
here
*/
orderNumber := 101;
DBMS_OUTPUT.PUT_LINE(aConstant);
DBMS_OUTPUT.PUT_LINE('Jahhh!');
DBMS_OUTPUT.PUT_LINE(orderNumber);
DBMS_OUTPUT.PUT_LINE(orderId);
DBMS_OUTPUT.PUT_LINE(customername);

    DECLARE
        localVariable number := 200;
    BEGIN
        -- Concatenation
        DBMS_OUTPUT.PUT_LINE('A local variable: ' || localVariable);
    END;
    
END;
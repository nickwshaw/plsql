declare
    totalAmount number := 10;
    discount number := 0;
begin
    -- IF
    if totalAmount > 200
    then
        discount := totalAmount * .2;
    elsif totalAmount >= 100 and totalAmount <= 200
    then
        discount := totalAmount * .1;
    else
        discount := totalAmount * .05;
    end if;
    
    DBMS_OUTPUT.put_line(discount);
    
    -- CASE
    case
    when totalAmount > 200
    then
        discount := totalAmount * .2;
    when totalAmount >= 100 and totalAmount <= 200
    then
        discount := totalAmount * .1;
    else
        discount := totalAmount * .05;
    end case;
    
    DBMS_OUTPUT.put_line(discount);
end;
declare
    counter number := 0;
begin

    -- WHILE
    while counter <= 20
    loop
        dbms_output.put_line('Counter = ' || counter);
        counter := counter+1;
    end loop;
    
    -- FOR
    for counter in 20..30
    loop
        dbms_output.put_line('For counter = ' || counter);
    end loop;

    -- FOR REVERSE
    counter := 0;
    for counter in reverse 30..40
    loop
        dbms_output.put_line('For reverse counter = ' || counter);
    end loop;
    
end;
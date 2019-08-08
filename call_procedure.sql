-- Method 1 order of parameters is important
DECLARE
    total NUMBER;
BEGIN
    ADD_CUSTOMER (40,'Jim','Shaw','W','14 Black Close','Botley','Oxford','UK',SYSDATE,'South',total);
    dbms_output.put_line(total);
END;

-- Method 2 order not important
DECLARE
    total NUMBER;
BEGIN
    ADD_CUSTOMER (
        c_fname         => 'Tom',
        c_id            => 9,
        c_lname         => 'Shaw',
        c_mname         => 'W',
        c_add1          => '14 Black Close',
        c_add2          => 'Botley',
        c_city          => 'Oxford',
        c_country       => 'UK',
        c_date_added    => SYSDATE,
        c_region        => 'South',
        total_count     => total
    );
END;


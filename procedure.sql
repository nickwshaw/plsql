CREATE OR REPLACE PROCEDURE ADD_CUSTOMER
(
c_id            IN NUMBER,
c_fname         IN VARCHAR2,
c_lname         IN VARCHAR2,
c_mname         IN VARCHAR2,
c_add1          IN VARCHAR2,
c_add2          IN VARCHAR2,
c_city          IN VARCHAR2,
c_country       IN VARCHAR2,
c_date_added    IN DATE,
c_region        IN VARCHAR2,
total_count     OUT NUMBER
)
AS
BEGIN
    INSERT INTO CUSTOMER (
        customer_id,
        first_name,
        last_name,
        middle_name,
        address_line1,
        address_line2,
        city,
        country,
        date_added,
        region
    )
    values (
        c_id,
        c_fname,
        c_lname,
        c_mname,
        c_add1,
        c_add2,
        c_city,
        c_country,
        c_date_added,
        c_region
    );
    
    commit;
    
    select count(1) into total_count from customer; 
    
    DBMS_OUTPUT.PUT_LINE('Sorted!');
END ADD_CUSTOMER;
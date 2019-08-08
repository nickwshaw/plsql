create or replace function get_total_sales(
v_sales_date IN date
)
return number
as
salescount number;
begin

    select count(1) into salescount from sales
    where sales_date = v_sales_date;
    return salescount;
end get_total_sales;

select to_date('01-JAN-2015', 'dd-mon-yyyy') from dual;

select get_total_sales(to_date('01-JAN-2015', 'dd-mon-yyyy')) from dual;



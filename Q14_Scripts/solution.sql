with sequence_series as (
select generate_series(min(serial_no),max(serial_no)) as serial_no from invoice 
)

select s.serial_no as missing_serial_no from  sequence_series s
left join invoice n on n.serial_no = s.serial_no
where n.serial_no is null;


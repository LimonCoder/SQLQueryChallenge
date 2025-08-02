with append_next_hour as (
    select *,
           DATE_ADD(lag(time_str) over (partition by date_str order by time_str),interval 1 hour) next_hour
    from (select date(event_time) as date_str, time(event_time) as time_str
          from event_logs) as temp
)
select date_str, next_hour from append_next_hour where time_str != next_hour;



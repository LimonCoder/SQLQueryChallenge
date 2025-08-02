with previous_logout_time as (select *,
                                     lag(logout_time) over (partition by employee_id order by id asc ) as previous_logout_time
                              from employee_attendance)

select login_time,
       logout_time,
       previous_logout_time,
       TIMESTAMPDIFF(MINUTE, previous_logout_time, login_time) as Gap
from previous_logout_time;
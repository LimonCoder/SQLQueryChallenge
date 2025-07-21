with appened_only_date as (
    select *, date(login_datetime) AS custom_date from user_logins
)
select custom_date as login_date, count(distinct user_id) as active_users from appened_only_date
group by custom_date;
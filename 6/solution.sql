select user_id, transaction_amount as 2nd_highest_salary from (select *,
                                                                      rank() over (partition by user_id order by transaction_amount desc ) as ranking
                                                               from transactions) as temp
where ranking = 2 order by user_id
;
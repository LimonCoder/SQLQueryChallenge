select user_id,
       min(purchase_date)                         as first_purchase_date,
       datediff(current_date, min(purchase_date)) as days_since_first_purchase
from purchases
group by user_id;
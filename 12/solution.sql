select count(distinct traveler) as travellers_back_home from (select *, first_value(start_city) over (partition by traveler order by date) as start_destination,
                                                                  last_value(end_city) over (partition by traveler order by date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) as end_destination
                                                              from travel_history) as temp
where start_destination = end_destination;
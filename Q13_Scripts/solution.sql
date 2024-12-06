select em.name as MANAGER, count(em.id) as NO_OF_EMPLOYEE from employee_managers em
join employee_managers m on em.id = m.manager
group by em.id,em.name;


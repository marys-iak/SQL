SELECT s.name FROM students s
JOIN friends f ON s.ID = f.ID
JOIN packages p on s.ID = p.ID
JOIN packages p2 on f.Friend_ID = p2.ID
WHERE p.salary < p2.salary
ORDER BY p2.salary;
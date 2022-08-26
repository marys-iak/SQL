SELECT f1.X, f1.Y FROM Functions f1
inner join functions f2 on
f1.X = f2.Y AND f2.X = f1.Y
GROUP BY f1.X, f1.Y
HAVING COUNT(f1.X)>1 or f1.X<f1.Y
ORDER BY f1.X ;
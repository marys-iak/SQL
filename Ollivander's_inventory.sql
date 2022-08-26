SELECT w.id, wp.age, w.coins_needed, w.power 
FROM wands as w JOIN wands_property as wp
ON w.code = wp.code
WHERE w.coins_needed= (SELECT min(coins_needed) FROM wands as w1 join wands_property as wp1 ON (w1.code = wp1.code) WHERE w1.power = w.power and wp1.age = wp.age) 
    and wp.is_evil = 0
ORDER BY w.power desc, 
        wp.age desc;
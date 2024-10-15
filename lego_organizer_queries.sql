
/*1. Find sets that have a word or phrase in their description*/
SELECT * FROM lego_sets
WHERE description LIKE '%Star Wars%' OR description LIKE '%spaceship%' OR description LIKE '%detailed%';

/* 2. Sort by sets with the highest piece count*/
SELECT * FROM lego_sets
WHERE piece_count IS NOT NULL
ORDER BY piece_count DESC;

/*3. Show only sets that belong to a specific theme*/
SELECT lego_sets.*
FROM lego_sets
JOIN themes ON lego_sets.theme_id = themes.theme_id
WHERE themes.theme_name = 'Star Wars';

/* 4. Paginate the sets, displaying 4 at a time*/
SELECT * FROM lego_sets
LIMIT 4 OFFSET 0; 

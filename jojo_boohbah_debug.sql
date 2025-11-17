SELECT * FROM jojo_stand;
SELECT * FROM boohbah;
SELECT * FROM boohbah_stand_link;

-- Question 1 fixed
SELECT b.boohbah_id, AVG(sync_level), b.name
FROM boohbah_stand_link l
JOIN boohbah b ON l.boohbah_id = b.boohbah_id
GROUP BY b.boohbah_id, b.name;

-- Question 2 fixed
SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l
    ON b.boohbah_id = l.stand_id
JOIN jojo_stand s
    ON l.stand_id = s.stand_id;

-- Question 3 fixed
SELECT name, color
FROM boohbah
WHERE energy_level > 80;

-- Question 4 fixed
SELECT b.boohbah_id, l.stand_id
FROM boohbah b
JOIN boohbah_stand_link l
ON b.boohbah_id = l.boohbah_id
WHERE b.boohbah_id = 2;

-- Question 5 fixed
SELECT name
FROM boohbah b
WHERE energy_level > (SELECT AVG(energy_level)
                      FROM boohbah);

-- Quesiton 6 fixed
SELECT name
FROM boohbah
WHERE energy_level > (SELECT MAX(power)
                      FROM jojo_stand
                      WHERE season = 3);

-- Question 7 fixed
SELECT b.name, s.stand_name
FROM boohbah b
JOIN boohbah_stand_link l on b.boohbah_id = l.boohbah_id
JOIN jojo_stand s on l.stand_id = s.stand_id
WHERE b.energy_level > 80;

-- Question 8 fixed
SELECT boohbah_id, sync_level
FROM boohbah_stand_link
WHERE sync_level > (SELECT AVG(sync_level) FROM boohbah_stand_link);

-- Question 9 fixed
SELECT boohbah_id, stand_id
FROM boohbah_stand_link
WHERE (boohbah_id, stand_id) IN
      (SELECT boohbah_id, stand_id FROM boohbah_stand_link);

-- QUestion 10 fixed
MERGE INTO boohbah b
USING boohbah_stand_link l
ON (b.boohbah_id = l.stand_id)
WHEN MATCHED THEN
  UPDATE SET b.energy_level = 999;
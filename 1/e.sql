SELECT * FROM (SELECT s.codigo, COUNT(1) as COUNT_SALA 
FROM dim_sala s, fat_alocacao aloc 
WHERE aloc.id_sala = s.id_sala 
GROUP BY s.codigo 
ORDER BY COUNT_SALA DESC)
WHERE ROWNUM <= 5;

SELECT * FROM (SELECT d.nome, COUNT(1) as QTD_TURMAS 
FROM dim_disciplina d, fat_alocacao aloc 
WHERE aloc.id_disciplina = d.id_disciplina
GROUP BY d.nome 
ORDER BY QTD_TURMAS DESC, d.nome)
WHERE ROWNUM <= 5;

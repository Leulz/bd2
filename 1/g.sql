SELECT * FROM (WITH PROFESSORES_MULT_DISC AS (SELECT DISTINCT id_professor, id_disciplina FROM fat_alocacao aloc WHERE aloc.id_disciplina != ANY(SELECT id_disciplina FROM fat_alocacao aloc_int WHERE aloc.id_professor = aloc_int.id_professor) order by id_professor)
SELECT p.nome, COUNT(1) AS DISC_PROF
FROM PROFESSORES_MULT_DISC, dim_professor p
WHERE p.id_professor = PROFESSORES_MULT_DISC.id_professor
GROUP BY p.nome
ORDER BY DISC_PROF DESC, p.nome)
WHERE ROWNUM <= 5;

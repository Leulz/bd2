SELECT nome, count(id_professor) AS QTD_PROF FROM (
SELECT DISTINCT d.id_disciplina, d.nome, aloc.id_professor FROM fat_alocacao aloc, dim_disciplina d WHERE aloc.id_disciplina = d.id_disciplina
) GROUP BY id_disciplina, nome ORDER BY QTD_PROF DESC, nome;

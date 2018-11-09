SELECT nome
FROM dim_professor p, (SELECT id_professor 
FROM fat_alocacao aloc 
WHERE aloc.id_curso = 1
INTERSECT
SELECT id_professor
FROM fat_alocacao aloc
WHERE aloc.id_curso = 2) d
WHERE p.id_professor = d.id_professor
ORDER BY nome;

SELECT nome FROM dim_professor p1 
WHERE p1.nome != ALL(SELECT DISTINCT p2.nome FROM fat_alocacao aloc, dim_professor p2 WHERE aloc.id_curso = 2 AND aloc.id_professor = p2.id_professor) 
ORDER BY p1.nome;

SELECT nome 
FROM dim_professor p 
WHERE EXISTS (SELECT 1 FROM fat_alocacao aloc WHERE p.id_professor = aloc.id_professor AND aloc.id_curso = 1)
AND EXiSTS(SELECT 1 FROM fat_alocacao aloc WHERE p.id_professor = aloc.id_professor AND aloc.id_curso = 2)
ORDER BY nome;

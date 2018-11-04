SELECT * FROM 
 (SELECT p.nome, AVG(carga) as MEDIA_CH 
  FROM dim_disciplina d, fat_alocacao a, dim_professor p 
  WHERE a.id_disciplina = d.id_disciplina AND p.id_professor = a.id_professor 
  GROUP BY p.nome 
  ORDER BY MEDIA_CH DESC) 
WHERE ROWNUM <= 5;

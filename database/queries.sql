-- ============================================================
-- METRICLY
-- Consultas analíticas
-- ============================================================


-- 1. Total de demandas
SELECT COUNT(*) AS total_demandas
FROM demanda;


-- 2. Demandas por status
SELECT
    s.nome AS status,
    COUNT(d.id_demanda) AS total_demandas
FROM demanda d
INNER JOIN status s
    ON d.id_status = s.id_status
GROUP BY s.nome
ORDER BY total_demandas DESC;


-- 3. Demandas por prioridade
SELECT
    p.nome AS prioridade,
    COUNT(d.id_demanda) AS total_demandas
FROM demanda d
INNER JOIN prioridade p
    ON d.id_prioridade = p.id_prioridade
GROUP BY p.nome
ORDER BY total_demandas DESC;


-- 4. Demandas por departamento
SELECT
    s.departamento,
    COUNT(d.id_demanda) AS total_demandas
FROM demanda d
INNER JOIN solicitante s
    ON d.id_solicitante = s.id_solicitante
GROUP BY s.departamento
ORDER BY total_demandas DESC;


-- 5. Carga de trabalho por responsável
SELECT
    ft.nome AS responsavel,
    COUNT(d.id_demanda) AS total_demandas,
    SUM(d.story_points) AS total_story_points
FROM demanda d
LEFT JOIN funcionario_tecnologia ft
    ON d.id_responsavel = ft.id_funcionario
GROUP BY ft.nome
ORDER BY total_story_points DESC;


-- 6. Total de Story Points
SELECT
    SUM(story_points) AS total_story_points
FROM demanda;


-- 7. Média de Story Points
SELECT
    ROUND(AVG(story_points), 2) AS media_story_points
FROM demanda;


-- 8. Demandas sem responsável
SELECT
    COUNT(*) AS demandas_sem_responsavel
FROM demanda
WHERE id_responsavel IS NULL;


-- 9. Demandas concluídas
SELECT
    COUNT(*) AS demandas_concluidas
FROM demanda d
INNER JOIN status s
    ON d.id_status = s.id_status
WHERE s.nome = 'Concluída';


-- 10. Visão consolidada das demandas
SELECT
    d.id_demanda,
    d.titulo,
    d.descricao,
    d.data_criacao,
    d.prazo,
    d.story_points,
    sol.nome AS solicitante,
    sol.departamento,
    st.nome AS status,
    p.nome AS prioridade,
    ft.nome AS responsavel,
    sp.nome AS sprint
FROM demanda d
INNER JOIN solicitante sol
    ON d.id_solicitante = sol.id_solicitante
INNER JOIN status st
    ON d.id_status = st.id_status
LEFT JOIN prioridade p
    ON d.id_prioridade = p.id_prioridade
LEFT JOIN funcionario_tecnologia ft
    ON d.id_responsavel = ft.id_funcionario
LEFT JOIN sprint sp
    ON d.id_sprint = sp.id_sprint
ORDER BY d.id_demanda;
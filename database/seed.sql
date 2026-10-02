-- ============================================================
-- METRICLY
-- Dados fictícios para demonstração do projeto
-- Execute após schema.sql em um banco vazio
-- ============================================================

-- ============================================================
-- FUNCIONÁRIOS DE TECNOLOGIA
-- ============================================================

INSERT INTO funcionario_tecnologia
    (id_funcionario, nome, email, especialidade)
VALUES
    (1, 'Lucas Martins', 'lucas.martins@nexaflow.com', 'Desenvolvimento'),
    (2, 'Beatriz Costa', 'beatriz.costa@nexaflow.com', 'Dados e BI'),
    (3, 'Gabriel Santos', 'gabriel.santos@nexaflow.com', 'Sistemas'),
    (4, 'Juliana Ferreira', 'juliana.ferreira@nexaflow.com', 'Automação');


-- ============================================================
-- PRIORIDADES
-- ============================================================

INSERT INTO prioridade
    (id_prioridade, nome)
VALUES
    (1, 'Baixa'),
    (2, 'Média'),
    (3, 'Alta'),
    (4, 'Crítica');


-- ============================================================
-- SOLICITANTES
-- ============================================================

INSERT INTO solicitante
    (id_solicitante, nome, email, departamento)
VALUES
    (1, 'Ana Souza', 'ana.souza@nexaflow.com', 'Financeiro'),
    (2, 'Felippe Augusto', 'felippe.augusto@nexaflow.com', 'Almoxarifado'),
    (3, 'Márcia Mendes', 'marcia.mendes@nexaflow.com', 'Supply Chain'),
    (4, 'Gabriela Fernandes', 'gabriela.fernandes@nexaflow.com', 'Comercial'),
    (5, 'Carlos Lima', 'carlos.lima@nexaflow.com', 'Comercial'),
    (6, 'Marina Alves', 'marina.alves@nexaflow.com', 'Marketing'),
    (7, 'Fernanda Rocha', 'fernanda.rocha@nexaflow.com', 'RH'),
    (8, 'Rafael Mendes', 'rafael.mendes@nexaflow.com', 'Operações');


-- ============================================================
-- STATUS
-- ============================================================

INSERT INTO status
    (id_status, nome)
VALUES
    (1, 'Nova'),
    (2, 'Em triagem'),
    (3, 'Backlog'),
    (4, 'Em execução'),
    (5, 'Aguardando validação'),
    (6, 'Concluída'),
    (7, 'Cancelada');


-- ============================================================
-- SPRINT
-- ============================================================

INSERT INTO sprint
    (id_sprint, nome, data_inicio, data_fim, objetivo)
VALUES
    (
        1,
        'Sprint 1',
        '2026-10-01',
        '2026-10-07',
        'Permitir o registro padronizado e o acompanhamento de demandas'
    );


-- ============================================================
-- DEMANDAS
-- ============================================================

INSERT INTO demanda
(
    id_demanda,
    titulo,
    descricao,
    data_criacao,
    prazo,
    story_points,
    id_solicitante,
    id_responsavel,
    id_status,
    id_prioridade,
    id_sprint
)
VALUES

(
    1,
    'Automatização de relatório financeiro',
    'Criar relatório automatizado para acompanhamento dos indicadores financeiros.',
    '2026-10-01 09:15:41.702453',
    '2026-10-15',
    5,
    1,
    NULL,
    1,
    2,
    NULL
),

(
    2,
    'Integração do CRM',
    'Integrar dados comerciais com o sistema interno.',
    '2026-09-22 09:00:00',
    '2026-10-18',
    8,
    5,
    3,
    4,
    3,
    1
),

(
    3,
    'Dashboard de Marketing',
    'Criar dashboard para acompanhamento das campanhas.',
    '2026-09-24 10:00:00',
    '2026-10-12',
    5,
    6,
    2,
    4,
    2,
    1
),

(
    4,
    'Automação de onboarding',
    'Automatizar etapas do processo de entrada de colaboradores.',
    '2026-09-25 08:00:00',
    '2026-10-20',
    8,
    7,
    4,
    3,
    3,
    1
),

(
    5,
    'Correção no sistema operacional',
    'Corrigir inconsistência identificada no processo operacional.',
    '2026-09-20 09:00:00',
    '2026-10-05',
    3,
    8,
    1,
    6,
    4,
    1
),

(
    6,
    'Relatório comercial',
    'Criar relatório de acompanhamento das vendas.',
    '2026-09-21 10:00:00',
    '2026-10-10',
    3,
    5,
    2,
    6,
    2,
    1
),

(
    7,
    'Automação de planilha financeira',
    'Automatizar consolidação mensal de dados financeiros.',
    '2026-10-01 09:25:06.033073',
    '2026-10-22',
    5,
    1,
    4,
    3,
    2,
    1
),

(
    8,
    'Melhoria no CRM',
    'Implementar melhoria no fluxo de cadastro de clientes.',
    '2026-10-01 09:25:06.033073',
    '2026-10-25',
    5,
    5,
    3,
    2,
    2,
    NULL
),

(
    9,
    'Indicadores de RH',
    'Criar indicadores para acompanhamento de processos de RH.',
    '2026-10-01 09:25:06.033073',
    '2026-10-28',
    3,
    7,
    NULL,
    1,
    1,
    NULL
),

(
    10,
    'Integração de dados operacionais',
    'Centralizar informações provenientes dos sistemas operacionais.',
    '2026-10-01 09:25:06.033073',
    '2026-10-30',
    8,
    8,
    NULL,
    2,
    3,
    NULL
);


-- ============================================================
-- HISTÓRICO DE STATUS
-- ============================================================

INSERT INTO historico_status
    (id_historico, id_demanda, id_status, data_alteracao)
VALUES

-- Demanda 1
(1, 1, 1, '2026-10-01 09:22:25.334622'),

-- Demanda 2
(2, 2, 1, '2026-09-22 09:00:00'),
(3, 2, 2, '2026-09-22 14:00:00'),
(4, 2, 3, '2026-09-23 10:00:00'),
(5, 2, 4, '2026-09-25 08:30:00'),

-- Demanda 3
(6, 3, 1, '2026-09-24 10:00:00'),
(7, 3, 2, '2026-09-24 15:00:00'),
(8, 3, 3, '2026-09-25 09:00:00'),
(9, 3, 4, '2026-09-28 08:00:00'),

-- Demanda 4
(10, 4, 1, '2026-09-25 08:00:00'),
(11, 4, 2, '2026-09-25 13:00:00'),
(12, 4, 3, '2026-09-26 09:00:00'),

-- Demanda 5
(13, 5, 1, '2026-09-20 09:00:00'),
(14, 5, 2, '2026-09-20 11:00:00'),
(15, 5, 3, '2026-09-21 08:00:00'),
(16, 5, 4, '2026-09-22 08:00:00'),
(17, 5, 6, '2026-09-25 16:00:00'),

-- Demanda 6
(18, 6, 1, '2026-09-21 10:00:00'),
(19, 6, 2, '2026-09-21 14:00:00'),
(20, 6, 3, '2026-09-22 09:00:00'),
(21, 6, 4, '2026-09-23 09:00:00'),
(22, 6, 6, '2026-09-28 15:00:00'),

-- Demanda 7
(23, 7, 1, '2026-10-01 09:25:06'),
(24, 7, 2, '2026-10-01 10:00:00'),
(25, 7, 3, '2026-10-01 11:00:00'),

-- Demanda 8
(26, 8, 1, '2026-10-01 09:25:06'),
(27, 8, 2, '2026-10-01 10:15:00'),

-- Demanda 9
(28, 9, 1, '2026-10-01 09:25:06'),

-- Demanda 10
(29, 10, 1, '2026-10-01 09:25:06'),
(30, 10, 2, '2026-10-01 10:30:00');


-- ============================================================
-- AJUSTE DAS SEQUÊNCIAS SERIAL
-- ============================================================

SELECT setval(
    pg_get_serial_sequence('solicitante', 'id_solicitante'),
    (SELECT MAX(id_solicitante) FROM solicitante)
);

SELECT setval(
    pg_get_serial_sequence('funcionario_tecnologia', 'id_funcionario'),
    (SELECT MAX(id_funcionario) FROM funcionario_tecnologia)
);

SELECT setval(
    pg_get_serial_sequence('status', 'id_status'),
    (SELECT MAX(id_status) FROM status)
);

SELECT setval(
    pg_get_serial_sequence('prioridade', 'id_prioridade'),
    (SELECT MAX(id_prioridade) FROM prioridade)
);

SELECT setval(
    pg_get_serial_sequence('sprint', 'id_sprint'),
    (SELECT MAX(id_sprint) FROM sprint)
);

SELECT setval(
    pg_get_serial_sequence('demanda', 'id_demanda'),
    (SELECT MAX(id_demanda) FROM demanda)
);

SELECT setval(
    pg_get_serial_sequence('historico_status', 'id_historico'),
    (SELECT MAX(id_historico) FROM historico_status)
);
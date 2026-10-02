-- ============================================================
-- METRICLY
-- Plataforma de Gestão e Inteligência de Demandas
-- Schema do banco de dados
-- PostgreSQL
-- ============================================================


-- ------------------------------------------------------------
-- TABELA: solicitante
-- Armazena os colaboradores que registram demandas.
-- ------------------------------------------------------------

CREATE TABLE solicitante (
    id_solicitante SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    departamento VARCHAR(100) NOT NULL
);


-- ------------------------------------------------------------
-- TABELA: funcionario_tecnologia
-- Armazena os profissionais de Tecnologia responsáveis
-- pela execução das demandas.
-- ------------------------------------------------------------

CREATE TABLE funcionario_tecnologia (
    id_funcionario SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    especialidade VARCHAR(100) NOT NULL
);


-- ------------------------------------------------------------
-- TABELA: status
-- Armazena os possíveis status do ciclo de vida da demanda.
-- ------------------------------------------------------------

CREATE TABLE status (
    id_status SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);


-- ------------------------------------------------------------
-- TABELA: prioridade
-- Armazena os níveis de prioridade das demandas.
-- ------------------------------------------------------------

CREATE TABLE prioridade (
    id_prioridade SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL UNIQUE
);


-- ------------------------------------------------------------
-- TABELA: sprint
-- Armazena as sprints utilizadas no planejamento das demandas.
-- ------------------------------------------------------------

CREATE TABLE sprint (
    id_sprint SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_inicio DATE NOT NULL,
    data_fim DATE NOT NULL,
    objetivo VARCHAR(300) NOT NULL
);


-- ------------------------------------------------------------
-- TABELA: demanda
-- Tabela central do sistema.
-- Relaciona solicitante, responsável, status, prioridade e sprint.
-- ------------------------------------------------------------

CREATE TABLE demanda (
    id_demanda SERIAL PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT NOT NULL,
    data_criacao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    prazo DATE,
    story_points INTEGER,

    id_solicitante INTEGER NOT NULL
        REFERENCES solicitante(id_solicitante),

    id_responsavel INTEGER
        REFERENCES funcionario_tecnologia(id_funcionario),

    id_status INTEGER NOT NULL
        REFERENCES status(id_status),

    id_prioridade INTEGER
        REFERENCES prioridade(id_prioridade),

    id_sprint INTEGER
        REFERENCES sprint(id_sprint)
);


-- ------------------------------------------------------------
-- TABELA: historico_status
-- Registra as alterações de status das demandas ao longo do tempo.
-- ------------------------------------------------------------

CREATE TABLE historico_status (
    id_historico SERIAL PRIMARY KEY,

    id_demanda INTEGER NOT NULL
        REFERENCES demanda(id_demanda),

    id_status INTEGER NOT NULL
        REFERENCES status(id_status),

    data_alteracao TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);
# Business Case — Metricly

## 1. Contexto

A NexaFlow é uma empresa fictícia de médio porte que possui diferentes áreas de negócio, como Comercial, Financeiro, Operações e demais departamentos internos.

As solicitações direcionadas à equipe de Tecnologia são realizadas por diferentes canais, como e-mail, Microsoft Teams e contato direto com os profissionais da área.

Algumas demandas são posteriormente registradas em planilhas para acompanhamento, porém esse registro não ocorre de forma padronizada.

---

## 2. Problema de Negócio

A ausência de um processo centralizado para gestão das demandas de Tecnologia dificulta o controle, a priorização e o acompanhamento das solicitações.

Entre os principais problemas identificados estão:

- demandas recebidas por diferentes canais;
- solicitações que podem não ser registradas;
- ausência de critérios padronizados de priorização;
- baixa visibilidade sobre a carga de trabalho da equipe;
- planilhas de acompanhamento desatualizadas;
- dificuldade dos solicitantes em acompanhar o andamento das demandas;
- comunicação de conclusão realizada de maneira inconsistente.

---

## 3. Causa Raiz

A análise do processo indicou que os problemas não estavam relacionados apenas à utilização de planilhas.

A principal causa identificada foi a ausência de um processo padronizado que definisse como as demandas deveriam ser:

1. recebidas;
2. registradas;
3. analisadas;
4. priorizadas;
5. atribuídas;
6. acompanhadas;
7. concluídas.

A desatualização das planilhas foi tratada, portanto, como um sintoma de um problema maior de processo.

---

## 4. Proposta de Solução

O Metricly foi concebido como uma solução para centralizar e estruturar a gestão das demandas de Tecnologia.

A proposta contempla:

- registro padronizado de demandas;
- triagem das solicitações;
- critérios de prioridade;
- acompanhamento de status;
- definição de responsáveis;
- organização das demandas em backlog e sprints;
- histórico de alterações de status;
- geração de indicadores gerenciais;
- análise da distribuição da carga de trabalho.

---

## 5. Objetivo do Projeto

Desenvolver uma solução orientada a processos e dados que permita melhorar a rastreabilidade das demandas de Tecnologia e fornecer informações para apoio à gestão e à tomada de decisão.

---

## 6. Tecnologias Utilizadas

- PostgreSQL — modelagem e armazenamento dos dados;
- SQL — consultas e análise dos dados;
- Python — integração, tratamento e preparação do dataset;
- Pandas — análise e transformação dos dados;
- SQLAlchemy — conexão entre Python e PostgreSQL;
- Power BI — construção do dashboard gerencial;
- Git/GitHub — versionamento e documentação do projeto.

---

## 7. Principais Indicadores

O dashboard do Metricly permite acompanhar indicadores como:

- total de demandas;
- demandas concluídas;
- total de Story Points;
- demandas sem responsável;
- distribuição das demandas por status;
- distribuição por prioridade;
- demandas por departamento;
- carga de trabalho por responsável.
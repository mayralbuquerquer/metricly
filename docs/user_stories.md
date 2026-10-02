# User Stories — Metricly

## US01 — Registrar demanda

**Como** solicitante,  
**quero** registrar uma demanda de Tecnologia,  
**para** encaminhar minha necessidade para análise da equipe.

**Story Points:** 3

### Critérios de Aceitação

- Dado que as informações obrigatórias estejam preenchidas, quando a demanda for submetida, então ela deverá ser registrada.
- A demanda deverá receber um identificador único.
- A demanda deverá possuir um status inicial.

---

## US02 — Validar informações obrigatórias

**Como** solicitante,  
**quero** ser informado quando informações obrigatórias estiverem faltando,  
**para** completar os dados antes da submissão.

**Story Points:** 2

### Critérios de Aceitação

- Se um campo obrigatório não estiver preenchido, a submissão deverá ser bloqueada.
- O sistema deverá indicar quais informações precisam ser preenchidas.
- Quando todas as informações obrigatórias estiverem preenchidas, a submissão deverá ser permitida.

---

## US03 — Notificação de demanda relacionada

**Como** solicitante,  
**quero** ser informado quando minha solicitação for vinculada a uma demanda existente,  
**para** compreender como minha necessidade será acompanhada.

**Story Points:** 3

---

## US04 — Acompanhar demandas

**Como** solicitante,  
**quero** visualizar minhas demandas cadastradas,  
**para** acompanhar o andamento das solicitações.

**Story Points:** 3

### Critérios de Aceitação

A consulta deverá apresentar, no mínimo:

- identificador;
- título;
- status;
- prioridade;
- data de criação.

---

## US05 — Identificar possíveis duplicidades

**Como** gestor de Tecnologia,  
**quero** identificar possíveis demandas duplicadas durante a triagem,  
**para** evitar tratamento desnecessariamente separado de solicitações relacionadas.

**Story Points:** 8
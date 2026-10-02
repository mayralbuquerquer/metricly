import os
import pandas as pd
from sqlalchemy import create_engine
from dotenv import load_dotenv

load_dotenv()

usuario = os.getenv("DB_USER")
senha = os.getenv("DB_PASSWORD")
host = os.getenv("DB_HOST")
porta = os.getenv("DB_PORT")
banco = os.getenv("DB_NAME")

engine = create_engine(
    f"postgresql+psycopg2://{usuario}:{senha}@{host}:{porta}/{banco}"
)
 
query = """
SELECT
    d.id_demanda,
    d.titulo,
    d.descricao,
    d.data_criacao,
    d.prazo,
    d.story_points,
    s.nome AS solicitante,
    s.departamento,
    st.nome AS status,
    p.nome AS prioridade,
    ft.nome AS responsavel,
    sp.nome AS sprint
FROM demanda d
INNER JOIN solicitante s
    ON d.id_solicitante = s.id_solicitante
INNER JOIN status st
    ON d.id_status = st.id_status
LEFT JOIN prioridade p
    ON d.id_prioridade = p.id_prioridade
LEFT JOIN funcionario_tecnologia ft
    ON d.id_responsavel = ft.id_funcionario
LEFT JOIN sprint sp
    ON d.id_sprint = sp.id_sprint
ORDER BY d.id_demanda;
"""
 
df = pd.read_sql(query, engine) 
 
print(df)
print("\n--- RESUMO DO DATASET ---")
df.info()

print("\n--- TOTAL DE DEMANDAS ---")
print(len(df))

print("\n--- DEMANDAS POR STATUS ---")
print(df["status"].value_counts())

print("\n--- TOTAL DE STORY POINTS ---")
print(df["story_points"].sum())

print("\n--- MÉDIA DE STORY POINTS ---")
print(df["story_points"].mean())

print("\n--- DEMANDAS SEM RESPONSÁVEL ---")
print(df["responsavel"].isna().sum())

print("\n--- DEMANDAS POR DEPARTAMENTO ---")
print(df["departamento"].value_counts())

print("\n--- DEMANDAS POR PRIORIDADE ---")
print(df["prioridade"].value_counts())

print("\n--- CARGA POR RESPONSÁVEL ---")
carga_responsavel = (
    df.groupby("responsavel", dropna=False)["story_points"]
    .agg(["count", "sum"])
)

print(carga_responsavel)

# Ordem lógica do fluxo de status
ordem_status = {
    "Nova": 1,
    "Em triagem": 2,
    "Backlog": 3,
    "Em execução": 4,
    "Aguardando validação": 5,
    "Concluída": 6,
    "Cancelada": 7
}

df["ordem_status"] = df["status"].map(ordem_status)

# Ordem lógica das prioridades
ordem_prioridade = {
    "Baixa": 1,
    "Média": 2,
    "Alta": 3,
    "Crítica": 4
}

df["ordem_prioridade"] = df["prioridade"].map(ordem_prioridade)

print("\n--- COLUNAS EXPORTADAS ---")
print(df.columns.tolist())

# Exportação do dataset tratado
df.to_csv(
    "data/metricly_dataset.csv",
    index=False,
    encoding="utf-8-sig"
)

print("\nDataset exportado com sucesso!")
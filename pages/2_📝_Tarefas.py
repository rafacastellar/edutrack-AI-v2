import streamlit as st

st.set_page_config(page_title="EduTrack AI - Tarefas", page_icon="📚")

st.title("📚 Gestão de Tarefas")

col1, col2 = st.columns([3, 1])

with col1:
    search = st.text_input(
        "🔍 Pesquisar Tarefas", placeholder="Digite o nome da tarefa..."
    )
with col2:
    filtro = st.selectbox("Filtrar por Status", ["Todas", "Pendentes", "Concluídas"])


st.markdown("---")

with st.expander("Tarefa 1: Configuração do ambiente (clique para ver)", expanded=True):
    st.write("**Dicsciplina:** Python Basics")
    st.write("**Professor:** Oriel")
    st.write("**Prazo:** 20/02/26")
    st.checkbox("Marcar como Concluída", value=False)

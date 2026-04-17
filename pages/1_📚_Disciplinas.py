# pagina de disciplinas.
import streamlit as st

st.set_page_config(page_title="EduTrack AI - Disciplinas", page_icon="📚")

st.title("📚 Gestão de Disciplinas")

tab_lista, tab_novo = st.tabs(["Listar", "➕ Adicionar Nova Disciplina"])

with tab_novo:
    st.subheader("Nova Disciplina")
    with st.form("form_nova_disciplina"):
        nome = st.text_input("Nome da Disciplina")
        professor = st.text_input("Professor Responsável")
        dia_semana = st.selectbox(
            "Dia da Semana", ["Segunda", "Terça", "Quarta", "Quinta", "Sexta"]
        )
        submit_button = st.form_submit_button("Adicionar")

    if submit_button:
        st.success(f"Disciplina {nome} adicionada com sucesso!")
        # Aqui você pode adicionar a lógica para enviar os dados para o backend (Xano)
with tab_lista:
    st.info("A conexao com Xano vira na tarefa 13.")
    st.dataframe(
        [
            {"Nome": "Python Basics", "Professor": "Oriel", "Dia": "Segunda"},
            {"Nome": "Low Code Advanced", "Professor": "Giuliano", "Dia": "Quarta"},
            {"Nome": "SQL Fundamentals", "Professor": "João", "Dia": "Sexta"},
        ],
        use_container_width=True,
    )

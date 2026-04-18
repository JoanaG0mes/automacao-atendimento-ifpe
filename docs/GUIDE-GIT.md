# 📚 Guia de Commits do Projeto

Este guia mostra o histórico de desenvolvimento do projeto, com commits incrementais para apresentar ao professor!

---

## 📌 Passo 1: Configurar o Git (se ainda não configurou)

```bash
git config --global user.name "Seu Nome"
git config --global user.email "seu-email@exemplo.com"
```

---

## 🔄 Histórico dos Commits (para apresentar!)

### Commit 1: Estrutura Inicial do Projeto
**Arquivos:**
- `.gitignore` - Arquivos a serem ignorados
- `iniciar-n8n.sh` - Script para ligar o n8n
- `parar-n8n.sh` - Script para desligar o n8n
- `README.md` - Arquivo principal

**Mensagem do Commit:**
```
feat: estrutura inicial do projeto com scripts básicos
```

---

### Commit 2: Workflow Básico de Resposta Automática
**Arquivos:**
- `workflows/workflow-resposta-institucional.json` - Workflow básico com 5 categorias

**Mensagem do Commit:**
```
feat: workflow básico de resposta automática de e-mails
```

---

### Commit 3: Documentação Completa
**Arquivos:**
- `docs/APRESENTACAO.md` - Texto de apresentação
- `docs/GUIA-PASSO-A-PASSO.md` - Guia de configuração
- `docs/FOLHETO-APRESENTACAO.md` - Folheto rápido
- `exemplos/*.txt` - Exemplos de e-mails

**Mensagem do Commit:**
```
docs: documentação completa para apresentação acadêmica
```

---

### Commit 4: Personalização para o IFPE Campus Igarassu
**Arquivos:**
- `workflows/workflow-ifpe-igarassu.json` - Workflow com dados reais do IFPE
- `workflows/workflow-ifpe-simples.json` - Versão simplificada

**Mensagem do Commit:**
```
feat: personalização para IFPE Campus Igarassu com dados reais
```

---

## 🚀 Como fazer os commits na ordem (para o professor ver o desenvolvimento!)

Para mostrar a evolução do projeto, podemos criar os commits na ordem acima!

---

## 📋 Para visualizar o histórico depois:

```bash
git log --oneline --graph
```

---

## 💡 Dica para a apresentação:

Mostre ao professor o histórico de commits e explique cada passo:
> "Primeiro criei a estrutura básica, depois o workflow básico, depois a documentação, e por fim personalizei para o IFPE Campus Igarassu!"

# 📧 Automação de Atendimento IFPE | Projeto de Aprendizado n8n

## 📚 Sobre o Projeto
Este é um projeto de **aprendizado de automação com n8n** desenvolvido para o IFPE Campus Igarassu. O objetivo é criar um sistema de resposta automática de e-mails para o CRADT, otimizando o atendimento aos alunos.

### 💡 O que eu aprendi:
- Como usar a plataforma low-code **n8n** para automação de workflows
- Integração com e-mails via IMAP/SMTP
- Classificação de mensagens por assunto usando nós de switch
- Criação de respostas automáticas personalizadas
- Versionamento de código com Git e GitHub

---

## 🎯 Funcionalidades
- 📥 Recebimento de e-mails institucionais
- 🔍 Classificação por assunto (matrícula, documentos, dúvidas)
- ✉️ Respostas automáticas personalizadas
- 🏛️ Personalizado para o IFPE Campus Igarassu

---

## 🚀 Acessar o n8n Agora

O n8n já está rodando! Acesse:
👉 **http://localhost:5678**

---

## 📂 Estrutura do Projeto

```
n8n/
├── README.md                          # Este arquivo
├── iniciar-n8n.sh                    # Script para ligar o n8n
├── parar-n8n.sh                      # Script para desligar o n8n
├── docs/
│   ├── APRESENTACAO.md               # Arquivo de apresentação para o professor
│   └── GUIA-PASSO-A-PASSO.md        # Guia detalhado de configuração
├── workflows/
│   └── workflow-resposta-institucional.json  # Workflow completo para importar
└── exemplos/
    ├── exemplo-01-matricula.txt      # Exemplo: e-mail sobre matrícula
    ├── exemplo-02-documentos.txt     # Exemplo: e-mail sobre documentos
    └── exemplo-03-financeiro.txt     # Exemplo: e-mail sobre financeiro
```

---

## 📖 Como Usar

### 1. Primeiro Acesso
1. Abra o n8n no navegador: http://localhost:5678
2. Crie uma conta de usuário (é gratuita e local)
3. Você verá o painel principal do n8n

### 2. Importar o Workflow
1. No menu lateral, clique em **Workflows**
2. Clique em **Import** → **Import from File**
3. Selecione o arquivo: `workflows/workflow-resposta-institucional.json`
4. Pronto! O workflow aparecerá no editor

### 3. Configurar o Workflow
Siga o guia detalhado em: `docs/GUIA-PASSO-A-PASSO.md`

---

## 🎯 Funcionalidades do Sistema

| Categoria | Palavras-chave | Resposta Automática |
|-----------|----------------|---------------------|
| 📝 Matrícula | matrícula, matricular, inscrição | Informações sobre período, documentos e como se matricular |
| 📄 Documentos | documento, certificado, histórico | Como solicitar documentos, prazos e taxas |
| ❓ Dúvidas Acadêmicas | dúvida, disciplina, professor, horário | Links úteis, contatos e FAQ |
| 💰 Financeiro | boleto, mensalidade, pagamento | Valores, vencimentos e formas de pagamento |
| 📨 Outros | Qualquer outro assunto | Resposta genérica com tempo de atendimento |

---

## 📊 Workflow Visual

```
Receber E-mail (IMAP)
    ↓
Extrair Dados do E-mail
    ↓
Classificar por Assunto (Switch)
    ├→ Matrícula → Resposta sobre Matrícula
    ├→ Documentos → Resposta sobre Documentos
    ├→ Dúvidas → Resposta sobre Dúvidas
    ├→ Financeiro → Resposta sobre Financeiro
    └→ Outros → Resposta Genérica
```

---

## 🎓 Dicas para a Apresentação

### O que Mostrar ao Professor:

1. **Tela do n8n**: Abra o workflow e mostre a interface visual
2. **Explique cada nó**:
   - "Receber E-mail" - lê os e-mails via IMAP
   - "Extrair Dados" - pega assunto, remetente e corpo
   - "Classificar por Assunto" - decide qual resposta enviar
   - Os nós de resposta - enviam o e-mail automático

3. **Demonstre um teste**:
   - Envie um e-mail de teste para a conta configurada
   - Mostre a resposta automática chegando na caixa de entrada

4. **Use os exemplos**: Mostre os arquivos na pasta `exemplos/`

5. **Destaque os benefícios**:
   - ✅ Resposta em segundos (não mais dias!)
   - ✅ Disponível 24h por dia
   - ✅ Sem erros humanos
   - ✅ Fácil de atualizar as respostas
   - ✅ Não precisa programar! (low-code)

---

## 🛠️ Comandos Úteis

### Ligar o n8n:
```bash
./iniciar-n8n.sh
```

### Desligar o n8n:
```bash
./parar-n8n.sh
```

### Verificar se o n8n está rodando:
```bash
sudo docker ps
```

---

## 📚 Arquivos Importantes

| Arquivo | O que Contém |
|---------|--------------|
| `docs/APRESENTACAO.md` | Texto completo para apresentar ao professor (resumo, objetivos, arquitetura) |
| `docs/GUIA-PASSO-A-PASSO.md` | Guia detalhado de como configurar tudo |
| `workflows/workflow-resposta-institucional.json` | O workflow completo para importar no n8n |
| `exemplos/*.txt` | Exemplos práticos de e-mails recebidos e respostas enviadas |

---

## ⚠️ Observações Importantes

1. **Dados são temporários**: Como não estamos usando volume, se o container for reiniciado, os workflows precisam ser importados novamente. Para apresentação, isso é ok!
2. **Use uma conta de e-mail para teste**: Recomendo criar uma conta Gmail só para testar o projeto
3. **Leia o guia**: O arquivo `GUIA-PASSO-A-PASSO.md` explica tudo detalhadamente

---

## 🎉 Pronto!

Você tem um projeto completo e profissional para apresentar! Qualquer dúvida, consulte os guias na pasta `docs/`.

Boa sorte na apresentação! 🎓✨

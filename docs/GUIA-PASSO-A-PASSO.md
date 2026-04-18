# Guia Passo a Passo - Configuração do Projeto

## 1. Iniciar o n8n

Antes de começar, precisamos garantir que o n8n esteja rodando.

### 1.1 Verificar se o Docker está instalado
```bash
docker --version
```

### 1.2 Iniciar o n8n
Execute o script na pasta do projeto:
```bash
./iniciar-n8n.sh
```

Ou execute manualmente:
```bash
sudo docker run -d \
  --name n8n \
  -p 5678:5678 \
  --restart unless-stopped \
  n8nio/n8n
```

### 1.3 Acessar o n8n
Abra no navegador: **http://localhost:5678**

---

## 2. Importar o Workflow

1. No painel do n8n, clique em **Workflows** no menu lateral
2. Clique em **Import** → **Import from File**
3. Selecione o arquivo: `workflows/workflow-resposta-institucional.json`
4. O workflow aparecerá no editor!

---

## 3. Configurar o Nó "Receber E-mail (IMAP)"

Este nó é responsável por ler os e-mails recebidos.

### 3.1 Credenciais do E-mail (Gmail exemplo)

| Campo | Valor |
|-------|-------|
| Host | imap.gmail.com |
| Porta | 993 |
| Usuário | seu-email@gmail.com |
| Senha | **senha de app** (veja abaixo) |
| SSL/TLS | Ativado |

### 3.2 Criar Senha de App no Gmail (IMPORTANTE!)

Para usar o Gmail com IMAP, você precisa:

1. Habilite o 2FA na sua conta Google: https://myaccount.google.com/security
2. Vá para: https://myaccount.google.com/apppasswords
3. Selecione "Mail" e "Other (Custom Name)" → Digite "n8n"
4. Copie a senha gerada e use no nó do n8n
5. Habilite IMAP no Gmail: Configurações → Encaminhamento e POP/IMAP → Ativar IMAP

### 3.3 Outlook/Hotmail
- Host: imap-mail.outlook.com
- Porta: 993

---

## 4. Configurar os Nós "Enviar E-mail (SMTP)"

Todos os nós de envio de e-mail precisam ser configurados.

### 4.1 Credenciais SMTP (Gmail exemplo)

| Campo | Valor |
|-------|-------|
| Host | smtp.gmail.com |
| Porta | 587 |
| Usuário | seu-email@gmail.com |
| Senha | mesma senha de app do IMAP |
| TLS | Ativado |

### 4.2 Personalizar o "From"
Altere o campo **From Email** para o e-mail da sua instituição:
- Ex: `secretaria@universidade.edu.br`

---

## 5. Configurar o Nó "Classificar por Assunto" (Switch)

Este nó decide qual resposta enviar com base nas palavras-chave.

### 5.1 Como funciona?
- Verifica se o assunto OU corpo do e-mail contém alguma palavra-chave
- Usa operador OR (basta uma palavra para ativar)
- Case insensitive (não diferencia maiúsculas/minúsculas)

### 5.2 Editar palavras-chave
1. Clique no nó "Classificar por Assunto"
2. Para cada rota, edite as condições
3. Adicione/remova palavras conforme necessidade

---

## 6. Personalizar as Respostas

Cada categoria tem uma resposta automática. Edite conforme sua instituição!

### 6.1 Resposta de Matrícula
- Nó: `Resposta: Matrícula`
- Edite o campo **Message** com suas informações

### 6.2 Resposta de Documentos
- Nó: `Enviar E-mail: Documentos`
- Personalize os dados de solicitação de documentos

### 6.3 Resposta de Dúvidas
- Nó: `Enviar E-mail: Dúvidas`
- Inclua links úteis e contatos

### 6.4 Resposta Financeiro
- Nó: `Enviar E-mail: Financeiro`
- Atualize valores e formas de pagamento

### 6.5 Resposta Genérica
- Nó: `Resposta Genérica`
- Para assuntos não classificados

---

## 7. Testar o Workflow

### 7.1 Teste Manual
1. Clique em **Test** no canto superior direito
2. Selecione o nó "Receber E-mail (IMAP)"
3. Clique em **Execute Node** para simular a recepção de e-mail

### 7.2 Teste Real
1. Envie um e-mail para a conta configurada
2. Use um assunto como: "Quero saber sobre matrícula"
3. Verifique se o workflow executa automaticamente
4. Verifique se a resposta chegou na caixa de entrada

### 7.3 Verificar Execuções
No menu lateral, clique em **Executions** para ver histórico.

---

## 8. Ativar o Workflow

Quando tudo estiver testado:
1. No editor do workflow, clique em **Active** no canto superior direito
2. O workflow agora monitorará e-mails em tempo real!

---

## 9. Parar o n8n

Se precisar parar:
```bash
./parar-n8n.sh
```

Ou manualmente:
```bash
sudo docker stop n8n
sudo docker rm n8n
```

---

## 10. Dicas Úteis para a Apresentação

✅ **Mostre o fluxo visualmente**: Aponte cada nó e explique o que faz  
✅ **Demonstre um teste real**: Envie um e-mail e mostre a resposta chegando  
✅ **Explique as palavras-chave**: Mostre como o sistema identifica cada assunto  
✅ **Destaque a simplicidade**: Ressalte que não precisa programar, é tudo visual!  
✅ **Mencione benefícios**: Velocidade, disponibilidade 24h, consistência  

Boa sorte na apresentação! 🎓✨

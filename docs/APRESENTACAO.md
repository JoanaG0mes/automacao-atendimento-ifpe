# Projeto Acadêmico: Sistema de Resposta Automática de E-mails Institucionais

## 1. Resumo do Projeto

Este projeto tem como objetivo desenvolver um sistema automatizado de resposta a e-mails institucionais recebidos de alunos. Utilizando a ferramenta low-code **n8n**, o sistema é capaz de:

- 📥 Ler e-mails recebidos na caixa de entrada institucional
- 🔍 Identificar o assunto principal da mensagem
- ✉️ Enviar respostas automáticas personalizadas conforme a categoria do assunto
- ⚡ Operar de forma eficiente e sem intervenção humana para questões frequentes

## 2. Objetivos

### Objetivo Geral
Desenvolver um sistema de automação de atendimento via e-mail que melhore a eficiência do atendimento institucional aos alunos.

### Objetivos Específicos
1. Implementar a integração com o servidor de e-mail institucional via protocolo IMAP
2. Desenvolver um mecanismo de classificação de e-mails por assunto
3. Criar um banco de respostas automáticas para as dúvidas mais frequentes
4. Garantir a simplicidade e facilidade de manutenção do sistema

## 3. Ferramentas Utilizadas

| Ferramenta | Versão | Descrição |
|------------|--------|-----------|
| n8n | Última | Plataforma low-code para automação de workflows |
| Docker | 29.1.3 | Contêinerização para deploy simplificado |
| IMAP/SMTP | - | Protocolos para recebimento e envio de e-mails |

## 4. Arquitetura do Sistema

```
┌─────────────────┐
│   Caixa de      │
│   Entrada de    │
│   E-mail        │
└────────┬────────┘
         │ IMAP
         ↓
┌─────────────────┐
│  Trigger IMAP   │
│  (n8n)          │
└────────┬────────┘
         ↓
┌─────────────────┐
│ Extração de     │
│ Dados do E-mail │
└────────┬────────┘
         ↓
┌─────────────────┐
│  Classificação  │
│  por Assunto    │
└────────┬────────┘
         ├─────────────────┬─────────────────┬─────────────────┐
         ↓                 ↓                 ↓                 ↓
    ┌─────────┐      ┌─────────┐      ┌─────────┐      ┌─────────┐
    │Matrícula│      │Documentos│      │  Dúvidas │      │  Outros │
    └────┬────┘      └────┬────┘      └────┬────┘      └────┬────┘
         ↓                 ↓                 ↓                 ↓
    ┌─────────┐      ┌─────────┐      ┌─────────┐      ┌─────────┐
    │ Resposta│      │ Resposta│      │ Resposta│      │ Resposta│
    │ Auto. 1 │      │ Auto. 2 │      │ Auto. 3 │      │ Genérica│
    └────┬────┘      └────┬────┘      └────┬────┘      └────┬────┘
         └─────────────────┴─────────────────┴─────────────────┘
                           ↓
                    ┌──────────┐
                    │  Envio   │
                    │ SMTP     │
                    └────┬─────┘
                         ↓
                    ┌──────────┐
                    │ E-mail de│
                    │ Resposta │
                    └──────────┘
```

## 5. Categorias de Assuntos Implementadas

| Código | Categoria | Palavras-chave |
|--------|-----------|----------------|
| CAT01 | Matrícula | matrícula, matricular, inscrição, rematrícula |
| CAT02 | Documentos | documento, certificado, histórico, declaração |
| CAT03 | Dúvidas Acadêmicas | dúvida, disciplina, professor, aula, horário |
| CAT04 | Financeiro | boleto, mensalidade, pagamento, valor |
| CAT05 | Outros | (qualquer outro assunto) |

## 6. Benefícios do Sistema

✅ **Redução do tempo de resposta**: De dias para segundos  
✅ **Disponibilidade 24/7**: Responde a qualquer hora do dia  
✅ **Consistência nas respostas**: Evita erros humanos  
✅ **Foco em atendimentos complexos**: Libera a equipe para casos mais importantes  
✅ **Facilidade de manutenção**: Interface visual intuitiva para atualizações  

## 7. Conclusão

Este projeto demonstra como ferramentas low-code como o n8n podem ser utilizadas para automatizar processos repetitivos em instituições de ensino, proporcionando uma melhor experiência aos alunos e otimizando o trabalho da equipe administrativa.

## 8. Equipe/Autor

Joana Silva  
Curso: [Nome do Curso]  
Disciplina: [Nome da Disciplina]  
Professor: [Nome do Professor]  
Data: 18/04/2026

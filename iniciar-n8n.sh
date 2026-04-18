#!/bin/bash

echo "Iniciando o n8n..."

# Parar e remover container existente (se houver)
sudo docker stop n8n 2>/dev/null
sudo docker rm n8n 2>/dev/null

# Iniciar o n8n (sem volume para evitar problemas de permissão)
sudo docker run -d \
  --name n8n \
  -p 5678:5678 \
  --restart unless-stopped \
  n8nio/n8n

echo "Aguardando o n8n iniciar..."
sleep 8

# Verificar status
if sudo docker ps | grep -q n8n; then
    echo "✅ n8n está rodando com sucesso!"
    echo "📍 Acesse em: http://localhost:5678"
else
    echo "❌ Erro ao iniciar o n8n. Verificando logs..."
    sudo docker logs n8n
fi

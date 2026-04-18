#!/bin/bash

echo "Parando o n8n..."

sudo docker stop n8n
sudo docker rm n8n

echo "✅ n8n parado com sucesso!"

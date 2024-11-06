FROM python:3.9-slim

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos necessários
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Comando para rodar a aplicação
CMD ["gunicorn", "-w", "4", "app:app", "--bind", "0.0.0.0:10000"]

# 1. Usar una imagen oficial de Python
FROM python:3.10-slim

# 2. Establecer el directorio de trabajo en el contenedor
WORKDIR /app

# 3. Copiar el archivo de dependencias e instalarlas
COPY requirements.txt .
RUN pip install --no-cache-dir -r requi.txt

# 4. Copiar el resto del código
COPY . .

# 5. Ejecutar la aplicación usando Gunicorn (un servidor para producción)
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 app:app

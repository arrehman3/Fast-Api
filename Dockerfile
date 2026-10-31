# 1. Start with Python 3.12
FROM python:3.12-slim

# 2. Set the working directory inside the container
WORKDIR /app

# 3. Copy dependency list into the container
COPY requirements.txt .

# 4. Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copy application code into the container
COPY main.py .

# 6. Document the port used by the application
EXPOSE 8000

# 7. Start FastAPI using Uvicorn
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

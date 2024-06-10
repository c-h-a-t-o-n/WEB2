# Встановлення базового образу
FROM python:3.12.3

# Встановлення робочої директорії усередині контейнера
WORKDIR /app

# Копіювання залежностей проекту та встановлення їх
COPY Pipfile Pipfile.lock /app/
RUN pip install pipenv && pipenv install --system

# Копіювання вихідного коду у контейнер
COPY . /app

# Команда для запуску програми
CMD ["python", "Personal-assistant-CLI-main/Personal-assistant-CLI/main.py"]
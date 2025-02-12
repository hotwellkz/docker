# Используем базовый образ для Node.js
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файлы зависимостей
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Указываем порт
EXPOSE 3000

# Запускаем приложение
CMD ["npm", "start"]

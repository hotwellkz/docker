# Используем базовый образ Node.js
FROM node:18

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем остальные файлы проекта
COPY . .

# Собираем приложение (если нужно)
RUN npm run build

# Указываем порт, который будет использоваться
EXPOSE 3000

# Запускаем приложение
CMD ["npm", "start"]


FROM node:alpine
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm install --only=production
COPY public/ public/
COPY .next/ .next/
EXPOSE 3000
CMD ["npm", "start"]

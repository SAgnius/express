# 1. Bazinis image
FROM node:18

# 2. Nustatome darbo katalogą
WORKDIR /app

# 3. Nukopijuojame package.json ir package-lock.json
COPY package*.json ./

# 4. Įdiegiame priklausomybes
RUN npm install

# 5. Kopijuojame visą likusį kodą
COPY . .

# 6. Paleidžiame programą
CMD ["node", "index.js"]

# 7. Atidarome portą
EXPOSE 3000


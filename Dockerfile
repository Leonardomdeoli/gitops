# Use a imagem base oficial do Go
FROM golang:1.18

# Defina o diretório de trabalho dentro do contêiner
WORKDIR /app

# Copie o código fonte para o diretório de trabalho
COPY . .

# Compile o código Go
RUN go build -o server .

# Defina o comando de execução quando o contêiner for iniciado
ENTRYPOINT [ "./server"]
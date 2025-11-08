# use a imagem oficial do MySQL como imagem base 
FROM mysql:latest 

# copie os scripts SQL de inicialização para um diretório temporário no container 
COPY ./Arquivos_Sql_Servidor /docker-entrypoint-initdb.d/
# exponha a porta padrão do MySQL 
EXPOSE 3306 
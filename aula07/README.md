### Agenda

- Instalando o MySQL
```
sudo apt-get install mysql-server libmysqlclient-dev
```
- Criar um projeto Rails com MySQL
```
rails new biblioteca -d mysql
```

- Criando nossa primeiro modelo
```
rails g model Book title publication_year:date
```
- Executando as migrations
```
rake db:create
rake db:migrate
```
- Como definir Validações

```
validates_presence_of :title
```

### Agenda

- Instalando o MySQL
```
sudo apt-get install mysql-server libmysqlclient-dev
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

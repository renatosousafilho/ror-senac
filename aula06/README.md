# Ruby on Rails

## Como instalar o Rails?
```
rvm gemset create myapp
rvm gemset use myapp
gem install rails --no-ri --no-rdoc
```

## Criando o primeiro projeto Rails
```
rails new myfirstapp
```

## Executando o projeto
```
rails server
```

ou 

```
rails s 
```
## Criando um blog em 5 minutos
```
rails g scaffold Post title body:text
```

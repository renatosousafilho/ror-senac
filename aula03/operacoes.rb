# operadores aritimeticos
puts 1+2 # soma
# => 3
puts 5-3 # subtração
# => 2
puts 10*2 #multiplicação
# => 20
puts 10.0/2 #divisão inteira
# => 5.0
puts 11%2 # resto da divisão
# => 1
puts 2**2 # potencia
# => 4
puts Math.sqrt(9) # raiz quadrada
# => 3

# Operadores relacionais
puts 4>2 # maior que
# => true
puts 5<3 # menor que
# => false
puts 5>=2+3 # maior ou igual a
# => true
puts 6<=14/2 # menor ou igual a
# => true
puts 1==2/2 # igual a 
# => true
puts 5!=Math.sqrt(25) # diferente de
# => false

# Operações lógicas
puts (5==10-5) && (8==2**3) # e/and
# => true
puts (1.is_a?(Integer)) || ("ruby".size>=4) # ou/or
# => true
puts (2.is_a?(String)) || ("PHP".size==2) # ou/or
# => false
puts !(10.next==11)  #!/not
# => false


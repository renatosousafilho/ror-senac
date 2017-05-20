# Estruturas condicionais

puts "Entre com a idade"
idade = gets.chomp.to_i

# Primeira forma
if idade>=18
	puts "maior de idade"
else
	puts "menor de idade"
end

# Segunda forma (if depois da condição)
numero_sorteado = gets.chomp.to_i
puts "você foi sorteado!" if numero_sorteado==11

# Operador ternário
puts "Entre com a idade"
idade = gets.chomp.to_i
mensagem = (idade>=18) ? "maior de idade" : "menor de idade"
puts mensagem

# Unless
numero =  gets.chomp.to_i
puts "eh um numero par" if !numero.odd? 
puts "eh um numero par" unless numero.odd? 

unless numero.odd?
	puts "numero par"
else
	puts "numero impar"
end

# elseif
idade = gets.chomp
if idade<16
	puts "eh proibido votar"
elsif (idade<18) || (idade>60)
	puts "voto facultativo"
else
	puts "voto obrigatório"
end




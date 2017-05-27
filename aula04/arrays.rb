# como declarar arrays
# forma implicita
nomes = []

# forma explicita
# numeros = Array.new
numeros = Array.new(10) { |i| i }
beatles = ["John", "Paul", "George", "Ringo"]

# Mostrar o tamanho da array
puts numeros.size
# => 10
puts beatles.length
# => 4

# Mostrar o elemento da array de acordo com o indice
puts numeros[0] 
# => 1
puts numeros[10]
# => nil

# Percorrer uma array
numeros.each do |numero|
	puts numero
end

beatles.each { |beatle| puts beatle }

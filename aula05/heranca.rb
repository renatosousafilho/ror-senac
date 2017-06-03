class Mamifero
	def respirar
		puts "inspirar e expirar"
	end

	def falar
		puts "Comunicar"
	end
end

class Cachorro < Mamifero
	# sobreescrita/overwritting
	def falar
		super
		puts "latir"
	end
end

class Gato < Mamifero
	# sobreescrita/overwritting
	def falar
		super
		puts "miar"
	end
end

class Humano < Mamifero; end

mamifero = Mamifero.new
mamifero.respirar
cao = Cachorro.new
cao.respirar
cao.falar
gato = Gato.new
gato.respirar
gato.falar
humano = Humano.new
humano.respirar
humano.falar
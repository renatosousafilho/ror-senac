class Pessoa
	attr_accessor :nome, :idade, :endereco, :telefone

	def initialize(nome, idade, endereco="", telefone)
		@nome, @idade, @endereco, @telefone = nome, idade, endereco, telefone
	end

	def example
	end

	def to_s
		return "Nome: #{self.nome}, \n idade: #{self.idade} \n, endereco: #{self.endereco}\n telefone: #{self.telefone}" 
	end
end
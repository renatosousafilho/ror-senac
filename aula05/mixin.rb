module Calculadora
	def somar(num1, num2)
		num1 + num2
	end
end

module Trigonometria
   def resolver_equacao_segundo_grau
   	 puts "resolver equacao"
   end
end


class CalculadoraComum 
   include Calculadora
end

class CalculadoraCientifica
   include Calculadora
   include Trigonometria
end

c1 = CalculadoraComum.new
puts c1.somar(2,2)
c2 = CalculadoraCientifica.new
puts c2.somar(5,6)
c2.resolver_equacao_segundo_grau
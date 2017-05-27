pessoa1 = {}

pessoa1[:nome] = "Fulano"
pessoa1[:data_nascimento] = "10/01/1978"
pessoa1[:solteiro] = false
p pessoa1
# => {ǹome: "Fulano", idade: 20, data_nascimento: "10/01/1978"}

pessoa2 = { nome: "Beltrano", data_nascimento: "10/09/1968", solteiro: true}
p pessoa2
pessoa3 = { nome: "Fabio", data_nascimento: "10/09/1968", solteiro: false}
p pessoa3

pessoas = [pessoa1, pessoa2, pessoa3]
pessoas.each { |pessoa| puts pessoa[:nome] }

pessoas << { nome: "Francisco", solteiro: true }

puts "=============== Adicionando nova pessoa ==================="
pessoas.each { |pessoa| puts pessoa[:nome] }
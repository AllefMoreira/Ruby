#Responsável por coletar os dados e grande parte do desenvolvimento do programa.
def consulta
divisores = [',', ' ', ';', "e"]
i = 0
nome = []
idade = []

#Loop para coleta de dados
while (i < 10)
  puts("Insira o primeiro o nome e depois a idade da #{i + 1}° pessoa.")
  info_tot = gets.chomp.upcase
  info_tot = info_tot.split(Regexp.union(divisores))

  nome[i] = info_tot.first.to_s
  idade[i] = info_tot.last.to_i

  i = i+1
end

#Consulta
puts"Qual o nome deseja encontrar?"
nome_ver = gets.chomp.to_s.upcase

#Verifica se o nome existe
for i in 0..9
  nome2 = nome[i]
  if(nome_ver == nome2)
    puts "Existe uma pessoa chamada #{nome2}, e ela tem #{idade[i]} anos de idade."
    nome_certo = nome_ver
  end
end

#Verifica se não há pessoas com o nome digitado
if (nome_certo != nome_ver)
puts"Não há ninguém com esse nome registrado!"
end

#Preparando uma possível repetição do programa
puts"Deseja repetir o processo?"
resp = gets.upcase
resp = resp[0..0]
return resp
end

#Responável por repetir o programa
def Resposta(resp)
  while (resp.include? "N" or resp.include? "S") == false
    puts "Digite apenas 'S' caso queira repetir, e 'N' caso não queira."
    resp = gets.upcase
    resp = resp[0..0]
  end
  if (resp.include? "N") == true

  else if (resp.include? "S") == true
         all
       end
  end
end

#Responsável por rodar o programa
def all
  resposta = consulta
  Resposta(resposta.to_s)
end

#Início do programa
all




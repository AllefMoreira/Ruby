#Criação de variáveis globais.
$divisores = [',', ';', ' ', 'e', '[', ']', '"']
$assentos = Array.new(20){Array.new(15)}

#Responsável por verificar os dados, coletar os dados, e preparar para uma possível repetição do programa.
  #Coleta de dados
def consulta
puts"Digite seu nome."
nome = gets.chomp.to_s

puts"Agora digite primeiro a fileira depois a cadeira desejada."
info_total = gets.chomp
info_total = info_total.split(Regexp.union($divisores))

  i = info_total.first.to_i
  j = info_total.last.to_i


  #Verifica se o assento está ocupado.
if ($assentos[i][j].to_s == "")
  puts "A cadeira #{j} na fileira #{i} agora te pertence!"
  $assentos[i][j] = nome
  else
  puts"Essa cadeira nessa fileira está ocupada."
  end

  #Preparando uma possível repetição do programa.
puts"Deseja repetir o processo?"
resp = gets.upcase
resp = resp[0..0]
return resp
end


#Responsável por repetir o programa.
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

#Chama os programas.
def all
  resposta = consulta
  Resposta(resposta.to_s)
end

#Início do programa
all


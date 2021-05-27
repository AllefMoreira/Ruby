#Pede o Número, faz o fatoral, e pergunta se quer coninuar.
def verificar
  puts "Digite um número positivo (caso digite alguma letra, será consideirado como 0)."
  num = gets.to_i

  #Verifica se o número corresponde ao pedido.
  if (num.to_i < 0)
    while (num < 0)
      puts "O número tem que ser positivo. Digite novamente."
      num = gets.to_i
    end
  end

  #Fatorial
  if (num == 0)
    puts"Fatorial: 0"
  else
    puts"Fatorial: #{(1..num).inject(:*)}"
  end

  #"Arruma" o pedido para o próximo passo
  puts "Deseja continuar?"
  resp = gets.upcase
  resp = resp[0..0]
  return resp
  end

#Responsável por sair do programa ou voltar a fazer a conta.
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

#Serve para entrar no loop, caso o usuário queira repetir.
  def all
resposta = verificar
Resposta(resposta.to_s)
  end

#Apenas inicia o programa
resposta = verificar
Resposta(resposta.to_s)
#Coleta de dados sobre o seno e o cosseno.
puts("Agora digite um dos ângulos do triângulo.")
angulo = gets

#Cálculo final para saber o sen. e o cos. do ângulo
sen = Math.sin(angulo.to_f * Math::PI/180)
cos = Math.cos(angulo.to_f * Math::PI/180)
puts("O cos. do desse ângulo é: #{cos}\nEnquanto o seno é:#{sen}\n")

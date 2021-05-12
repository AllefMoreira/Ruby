#Váriavel usada para divir strings.
divisores = [',', ' ', "e"]

#Coleta de dados sobre a área do triângulo.
puts("Insira primeiro a base e a altura, nesta ordem.")
full_area = gets

#Divisão da string.
area = full_area.split(Regexp.union(divisores))

#Cálculo final para saber a área do triângulo.
area = (area.first.to_f * area.last.to_f) / 2
puts("A área do triângulo é: #{area}\n")

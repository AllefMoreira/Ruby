#Criação das variáveis
x = 0
y = 1
tot = 1

#Fibonacci
while (tot < 1000)
  puts"#{tot}"
  tot = x+y
  x = y
  y = tot
end
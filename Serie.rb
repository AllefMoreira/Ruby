#Definição de quantos números irão aparecer
puts"Digite quantos número quer que apareça."
num = gets.chomp.to_i

#Conta em si
for i in 1..num
  puts "#{i ** 2 + 1}"
end

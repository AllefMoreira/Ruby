#Coleta de dados
puts"Digite um número positivo e inteiro."
num = gets.chomp.to_i

#Conta
puts "=================================="
for i in 1..10
  puts "#{num} x #{i} = #{num * i}"
end
puts "=================================="
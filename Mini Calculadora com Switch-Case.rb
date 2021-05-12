#Váriavel usada para divir strings.
divisores = [' ', '+','-','*','/']

#Insersão de dados
puts("Monte uma conta com dois números, só é permitido usar: +, -, * ou /")
calculo = gets.chomp

#Separando a string
sinal = calculo[/\W+/]
sinal = sinal.split(" ").to_s
calculo = calculo.split(Regexp.union(divisores))

#Cálculo apenas com switch-case
case sinal.to_s
when ["+"].to_s
  result = calculo.first.to_f + calculo.last.to_f
  puts("O resultado de #{calculo.first.to_f} + #{calculo.last.to_f} = #{result}")
when ["-"].to_s
  result = calculo.first.to_f - calculo.last.to_f
  puts("O resultado de #{calculo.first.to_f} - #{calculo.last.to_f} = #{result}")
when ["*"].to_s
  result = calculo.first.to_f * calculo.last.to_f
  puts("O resultado de #{calculo.first.to_f} * #{calculo.last.to_f} = #{result}")
when ["/"].to_s
  result = calculo.first.to_f / calculo.last.to_f
  puts("O resultado de #{calculo.first.to_f} / #{calculo.last.to_f} = #{result}")
else
  puts("Use os símbolos indicados, se não quebra o programa :d")
end

#Váriavel usada para divir strings.
divisores = [' ', '+','-','*','/']

#Insersão de dados
puts("Monte uma conta com dois números, só é permitido usar: +, -, * ou /")
full_calculo = gets

#Separando a string
calculo = full_calculo.split(Regexp.union(divisores))

#Cálculo apenas com If e Else
if(full_calculo.include? "+")
  result = calculo.first.to_f + calculo.last.to_f
  puts("O resultado de #{calculo.first.to_f} + #{calculo.last.to_f} = #{result}")
else
  if (full_calculo.include? "-")
    result = calculo.first.to_f - calculo.last.to_f
    puts("O resultado de #{calculo.first.to_f} - #{calculo.last.to_f} = #{result}")
  else
    if (full_calculo.include? "*")
      result = calculo.first.to_f * calculo.last.to_f
      puts("O resultado de #{calculo.first.to_f} * #{calculo.last.to_f} = #{result}")
    else
      if (full_calculo.include? "/")
        result = calculo.first.to_f / calculo.last.to_f
        puts("O resultado de #{calculo.first.to_f} / #{calculo.last.to_f} = #{result}")
      else
        puts("Use os símbolos indicados, se não quebra o programa :d")
      end
    end
  end
end
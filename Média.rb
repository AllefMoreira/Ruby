#Váriavel usada para divir strings.
divisores = [',', ' ', ';', "e"]

#Inserção das notas.
puts("Insira as quatros notas do aluno.")
full_media = gets
media = full_media.split(Regexp.union(divisores))

#Cálculo da média.
mediaf = (media.first.to_f + media[1].to_f + media[2].to_f + media.last.to_f) / 4

#Condições para definir se estará aprovado, reprovado ou de exame.
if(mediaf >= 6)
  puts ("O aluno está... APROVADO! Com uma bela média de #{mediaf}, parabéns!")
else
  if(mediaf < 3)
    puts ("O aluno está... REPROVADO! Um #{mediaf} não foi o suficiente, mas não desanime, estude ainda mais!")
  else
    puts ("O aluno está... DE EXAME! Sua média foi um #{mediaf}, mas ainda há esperanças!")
  end
end
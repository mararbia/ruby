# • Anos bissextos. Escreva um programa que pergunte um ano inicial e um ano final, 
# Anos bissextos são sempre divisíveis por quatro (como 1984 e 2004). Contudo, anos divisíveis por 100 
# não são bissextos (como 1800 e 1900) a não ser que sejam divisíveis por 400 (como 1600 e 2000, que foram de fato anos bissextos). 
# (Sim, é bem confuso, mas não tão confuso como ter dezembro no meio do inverno, que é o que aconteceria no fim).

ini = gets.chomp.to_i
fin = gets.chomp.to_i

while ini <= fin
    if (ini % 4 == 0 && ini % 100 != 0) || (ini % 400 == 0)
        puts "#{ini} é um ano bissexto"
    end
    ini += 1
end
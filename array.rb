# • Escreva o programa que nós comentamos no início deste capítulo.
# Dica: Existe um adorável método de array que dará a você uma versão ordenada de um array: sort. Use-o!

array = []
counter = 0

puts "Qual o tamanho do array?"
tam = gets.chomp.to_i

puts "Insira os números que vão para o array: "
while  counter < tam
    number = gets.chomp.to_i
    
    array.push(number)
    counter += 1
    
end

puts "\n #{array.sort}"



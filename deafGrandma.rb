# • Escreva um programa Velha Surda. O que quer que você diga à velha (o que quer que você digite), 
# ela tem que responder com QUE?! FALA MAIS ALTO!, a não ser que você grite (digite tudo em maiúsculas). 
# Se você gritar, ela pode lhe ouvir (ou ao menos pensa que pode), e sempre responde NÃO, NÃO DESDE 1938! 
# Para fazer seu programa ser realmente verossímil, faça a velha gritar um número diferente a cada vez; 
# talvez qualquer ano aleatório entre 1930 e 1950 (a última parte é opcional, e ficaria muito mais fácil 
# se você lesse a seção sobre o gerador de números randômicos do Ruby no capítulo sobre métodos). Você não 
# pode parar de falar com a velha enquanto não gritar TCHAU.
# Dica: Não esqueça do chomp ! 'TCHAU' com um enter não é a mesma coisa que 'TCHAU' sem! 
# Dica 2: Tente pensar em que partes do programa as coisas acontecem repetidamente. Todas elas devem estar no seu loop while.
# • Melhore o seu programa Velha Surda: e se a velha não quiser que você vá embora? Quando você gritar TCHAU, 
# ela pode fingir que não lhe ouve. Mude seu programa anterior para que você tenha que gritar TCHAU três vezes em seqüência. 
# Teste bem o seu programa: se você gritar TCHAU três vezes, mas não em seqüência, você tem que continuar falando com a velha. 

phrase = ''
bye = 'TCHAU'*3

while phrase != bye
    phrase = gets.chomp

    if phrase == bye
        puts 'TCHAU'
    elsif phrase == phrase.upcase
        puts "NÃO, NÃO DESDE #{rand(1930..1950)}"
    elsif phrase == phrase.downcase
        puts 'QUÊ?! FALA MAIS ALTO!'
    end
end

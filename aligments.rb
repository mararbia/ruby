# • Eis aqui algo para você fazer para brincar um pouco mais com center, 
# ljust e rjust: Escreva um programa que irá mostrar um Índice de forma que fique parecido com: 
#http://www.jmonteiro.com/aprendaaprogramar/chapter05.html

lineWidth = 40
puts 'Table of Contents'.center(lineWidth*2)
puts 'Chapter 1 : Numbers'.ljust(lineWidth) + 'page 1'.rjust(lineWidth/2)
puts 'Chapter 2 : Letters'.ljust(lineWidth) + 'page 72'.rjust(lineWidth/2)
puts 'Chapter 3 : Variables'.ljust(lineWidth) + 'page 118'.rjust(lineWidth/2)
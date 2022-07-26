# • Escreva um programa do Chefe Zangado. Ele deve perguntar o que você quer de forma rude. 
# Qualquer que seja a sua resposta, o Chefe Zangado vai gritar de volta para você, e então despedi-lo. 
# Por exemplo, se você digitar Eu quero um aumento., ele deve gritar de volta 
# O QUE VOCÊ QUER DIZER COM "EU QUERO UM AUMENTO."?!?  VOCÊ ESTÁ DESPEDIDO!!

question = gets.chomp.upcase

puts "O QUE VOCÊ QUE DIZER COM '#{question}.'?!? VOCÊ ESTÁ DESPEDIDO!!"
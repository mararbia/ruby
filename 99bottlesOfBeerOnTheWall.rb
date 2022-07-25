# Version in Portuguese
# • "Um elefante incomoda muita gente..." Escreva um programa que imprima a letra para o clássico das viagens de carro,
# com um limite de 100 elefantes. 

counter = 1

phrase1 = ' elefante incomoda muita gente'
phrase2 = ' elefantes incomodam muita gente'
phrase3 = ' elefantes incomodam, incomodam muito mais'

while counter < 100
    
    if counter == 1
        puts "#{counter} #{phrase1}"
        counter += 1
        puts "#{counter} #{phrase3}"
    elsif counter >= 3
        puts "#{counter} #{phrase2}"
        counter += 1
        puts "#{counter} #{phrase3}"
    end
    counter += 1
end
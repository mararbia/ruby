def happyBirthday (year, month)
    today = Time.now
    counter = 1
    
    age = today.year - year

    if (month > today.month)
        age -= 1
        puts "Você tem #{age} anos e completará #{age+1} em breve"
    else
        puts "Você tem #{age} anos de idade"
    end

    loop do
        puts "#{counter} PUXÃO DE ORELHA"
        break if counter == age
        counter += 1
    end
end

puts "Qual o ano do nascimento: "
year = gets.chomp.to_i
puts "Qual o mês do nascimento: "
month = gets.chomp.to_i
happyBirthday year, month


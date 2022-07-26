class OrangeTree
    
    def initialize
        @height = 0.3
        @age = 0
        @unit = 'cm'
        @dead = false
        @fruits = 10
        @lineWidth = 40

        puts "\n#######################################\n\n"
        puts "Árvore plantada!".center(@lineWidth)
        puts "\n########################################\n\n"
    end

    def height
        @height
        @age
        @unit

        if not @dead
            if @age <= 0
                puts "\n#######################################"
                puts "Info".center(@lineWidth)
                puts "Idade: 6 meses"
                puts "Altura: 0.15 cm"
                puts "\n########################################\n\n"
            else
                puts "Idade: #{@age}"
                puts "Altura: #{@height.floor(2)} #{@unit}"
            end
        else
            puts "\n\n******************************************"
            puts "Não há mais o que fazer. Adeus!"
            puts "******************************************\n\n"
        end
    end

    def oneYearPasses
        @height += 0.3
        @age += 1

        if @age == 1
            puts "\n#######################################"
            puts "1 ano depois".center(@lineWidth)
            puts "Idade: #{@age} ano"
            puts "Altura: #{@height.floor(2)} #{@unit}"
            puts "\n########################################\n\n"

        elsif @age > 1
            @fruits += 1
            if @height >= 1
                @unit = 'm'
            end
            puts "\n########################################"
            puts "1 ano depois".center(@lineWidth)
            puts "Idade: #{@age} anos"
            puts "Altura: #{@height.floor(2)} #{@unit}"
            puts "Frutos: #{@fruits}"
            puts "\n########################################\n\n"
        end

        if @age == 10
            @dead = true
            puts "*************************************************************"
            puts "*" + "Ohh...que pena...morreu!".center(@lineWidth) + "*".rjust(@lineWidth/2)
            puts "*" + "Era uma árvore velha para sua espécie!".center(@lineWidth+3) + "*".rjust(@lineWidth - 23)
            puts "*************************************************************\n\n"
            puts "#######################################"
            puts "Últimas informações".center(@lineWidth)
            puts "\nIdade: #{@age} anos"
            puts "Altura: #{@height.floor(2)} #{@unit}\n\n"   
            puts "#######################################"
        end
    end

    def countTheOranges
        if @age >= 2 && @fruits >= 1
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
            puts "Há #{@fruits} frutos na árvore!".center(@lineWidth)
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x\n\n"
        elsif @fruits == 0
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
            puts "Ops...não há mais frutos!!!".center(@lineWidth)
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
        else
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
            puts "Não há frutos ainda!".center(@lineWidth)
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x\n\n"
        end
    end

    def pickAnOrange
        if @age <=2
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
            puts "Não há frutos para serem colhidos ainda!!!".center(@lineWidth + 15)
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
        elsif @fruits == 0
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
            puts "Ops...não há mais frutos!!!".center(@lineWidth)
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
        elsif @age >= 2 && @fruits >= 1
            @fruits -= 1
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x"
            puts "Uau...essa laranja estava deliciosa!".center(@lineWidth)
            puts "x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x-x\n\n"
        end
    end
end

orangeTree = OrangeTree.new
puts "Aperte ENTER para ver as opções"
leave = gets.chomp.downcase
puts "1 - Idade e altura da árvore"
puts "2 - Passar 1 ano"
puts "3 - Contar laranjas"
puts "4 - Pegar uma laranja"
puts "6 - Finalizar o programa!"

while leave != 'sair'
    puts "Escolha uma opção:"
    option = gets.chomp.to_i
    case option
    when 1
        orangeTree.height
    when 2
        orangeTree.oneYearPasses
    when 3
        orangeTree.countTheOranges
    when 4
        orangeTree.pickAnOrange
    else
        puts "Finalizando o programa!"
        break
    end
end


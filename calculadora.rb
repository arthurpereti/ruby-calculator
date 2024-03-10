loop do
    puts 'Bem vindo à sua própria calculadora'
    puts '1 - Usar a calculadora'
    puts '0 - Sair'
    print 'Escolha uma opção: '
    opcao = gets.chomp.to_i

    def is_number?(num)
        true if Float(num) rescue false
      end

    if opcao == 1 
        puts 'Fico feliz que você decidiu usar a calculadora'

        print 'Digite o primeiro número: '
        num1 = gets.chomp
        print 'Digite o segundo número: '
        num2 = gets.chomp
        
        if is_number?(num1) && is_number?(num2)
            num1 = num1.to_f
            num2 = num2.to_f
            puts 'Qual das operações matemáticas você quer fazer ?'
            puts '1 - Soma'
            puts '2 - Subração'
            puts '3 - Multiplicação'
            puts '4 - Divisão'
            print 'Escolha uma opção: '
            opcaooperacao = gets.chomp.to_i
            case opcaooperacao
            when 1
                soma = num1 + num2
                puts "Como você escolheu a opção de soma, o número #{num1} + #{num2} da #{soma}"
            when 2
                subtracao = num1 - num2
                puts "Como você escolheu a opção de subtração, o número #{num1} - #{num2} da #{subtracao}"
            when 3
                multiplicao = num1 * num2
                puts "Como você escolheu a opção de multiplicação, o número #{num1} multiplicado pelo número #{num2} da #{multiplicao}"
            when 4
                divisao = num1 / num2
                puts "Como você escolheu a opção de divisão, o número #{num1} dividido pelo número #{num2} da #{divisao}"
            else 
                puts 'Opção Inválida'
            end
        else 
            puts 'Isso não é um número'
        end
    elsif opcao == 0 
        puts 'Fico magoado por você não querer usar a calculaora'
        break
    else
        puts 'Opção inválida'
    end
end
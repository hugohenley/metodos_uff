#encoding: utf-8
require '../conversao_bases/conversao_decimal'
require '../conversao_bases/decimal_outra'
require '../conversao_bases/decimal_hexa'

puts "Escolha um número para converter"
numero = gets.chomp
puts "Qual a base do número escolhido?"
base = gets.chomp
puts "Para qual base deseja converter?"
nova_base = gets.chomp

decimal = ConversaoDecimal.new(numero, base).to_decimal
if nova_base == '16'
  puts "O número #{numero} da base #{base} para a base #{nova_base} é:"
  puts DecimalHexa.new(decimal).to_hex
else
  puts "O número #{numero} da base #{base} para a base #{nova_base} é:"
  puts DecimalOutra.new(decimal, nova_base).converter
end
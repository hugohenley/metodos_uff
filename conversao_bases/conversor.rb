#encoding: utf-8
require '../conversao_bases/conversao_decimal'
require '../conversao_bases/decimal_outra'
require '../conversao_bases/decimal_hexa'
require '../conversao_bases/hexa_decimal'

puts "Escolha um número para converter"
numero = gets.chomp
puts "Qual a base do número escolhido?"
base = gets.chomp.to_i
puts "Para qual base deseja converter?"
nova_base = gets.chomp

decimal = ConversaoDecimal.new(numero, base).to_decimal
puts "O número #{numero} da base #{base} para a base #{nova_base} é:"
puts DecimalOutra.new(decimal, nova_base).converter
#encoding: utf-8
require '../secante/secante'

puts "Qual o grau da função que você deseja usar o Método da Secante?"
grau = gets.chomp.to_i
coeficientes = []
inicio = nil
fim = nil
precisao = nil

if grau == 2
  puts "\n"
  puts "A função escolhida é da forma ax^2 + bx + c"
  puts "Agora você deve escolher os coeficientes. Caso o mesmo seja fracionário, escreva na forma x.xx"
  puts "\n"
  puts "Entre com o coeficiente 'a':"
  a = gets.chomp.to_f
  puts "Entre com o coeficiente 'b':"
  b = gets.chomp.to_f
  puts "Entre com o coeficiente 'c':"
  c = gets.chomp.to_f
  coeficientes = [a, b, c]
  puts "Escolha o início do intervalo, x0:"
  inicio = gets.chomp.to_f
  puts "Escolha o fim do intervalo, x1:"
  fim = gets.chomp.to_f
  puts "Escolha a precisão desejada:"
  precisao = gets.chomp.to_f
elsif grau == 3
  puts "\n"
  puts "A função escolhida é da forma ax^3 + bx^2 + cx + d"
  puts "Agora você deve escolher os coeficientes. Caso o mesmo seja fracionário, escreva na forma x.xx"
  puts "\n"
  puts "Entre com o coeficiente 'a':"
  a = gets.chomp.to_f
  puts "Entre com o coeficiente 'b':"
  b = gets.chomp.to_f
  puts "Entre com o coeficiente 'c':"
  c = gets.chomp.to_f
  puts "Entre com o coeficiente 'd':"
  d = gets.chomp.to_f
  coeficientes = [a, b, c, d]
  puts "Escolha o início do intervalo, x0:"
  inicio = gets.chomp.to_f
  puts "Escolha o fim do intervalo, x1:"
  fim = gets.chomp.to_f
  puts "Escolha a precisão desejada:"
  precisao = gets.chomp.to_f
end

puts "A raiz da função escolhida é:"
s = Secante.new(inicio, fim, precisao, grau, coeficientes)
puts s.calcular_raiz

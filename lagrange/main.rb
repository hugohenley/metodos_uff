#encoding: utf-8

require '../lagrange/lagrange.rb'

puts "Vamos usar o método de interpolação de Lagrange para indicar o valor de um ponto desconhecido quando conhecemos alguns outros pontos"
puts "Para que a interpolação seja feita, é necessário indicar alguns valores para x e f(x)"

puts "Indique os valores de x (Exemplo: -1, 0, 2)"
x = gets.chomp.split(',').map! {|n| n.to_f }

puts "Indique agora os valores para f(x) (Exemplo: 4, 1, -1)"
y = gets.chomp.split(',').map! {|n| n.to_f }

puts "Indique em qual ponto da função você deseja saber o valor de f(x) (Exemplo: 2.3)"
p = gets.chomp.to_f

if x.size != y.size
  puts "O tamanho dos pontos em x deve ser igual ao tamanho dos pontos em f(x)"
  return
end

puts "O valor aproximado de f(x) no ponto #{p} através do método de interpolação de Lagrange é:"
puts Lagrange.new(p, x, y).calcular_valor
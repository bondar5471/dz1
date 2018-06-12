def discriminant(a, b, c)
  b**2 - 4 * a * c
end

puts 'Квадратное уравнение:'
puts 'Введите коефициенты a, b и c'
print 'a: '
a = gets.chomp.to_i
print 'b: '
b = gets.chomp.to_i
print 'c: '
c = gets.chomp.to_i
d = discriminant(a, b, c)

if d < 0
  puts "Дискриминант: #{d}"
  puts 'Корней нет'
elsif d.nil?
  x = b / (2 * a).to_f
  puts "Дискриминант: #{d}"
  puts "X = #{x}"
else
  x1 = (b + Math.sqrt(d)) / (2 * a).to_f
  x2 = (b - Math.sqrt(d)) / (2 * a).to_f
  puts "Дискриминант: #{d}"
  puts "X1 = #{x1.round}"
  puts "X2 = #{x2.round}"
end

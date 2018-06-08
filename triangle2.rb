def right_triangle?(a, b, c)
  [a, b, c].sort.reverse
  a[0]**2 == a[1]**2 + a[2]**2
end

def isosceles_triangle?(a, b, c)
  (a == b && a == c) || (b == a && b == c) || (c == a && c == b)
end

def equilateral_triangle?(a, b, c)
  a == b && a == c
end

def versatile_triangle?(a, b, c)
  !right_triangle?(a, b, c) && !isosceles_triangle?(a, b, c) && !equilateral_triangle?(a, b, c)
end

print 'Сторона A: '
a = gets.chomp.to_i
print 'Сторона B: '
b = gets.chomp.to_i
print 'Сторона C: '
c = gets.chomp.to_i

if a < 0 || b < 0 || c < 0
  puts 'Вы ввели некорректные данные'
else
  puts 'Треугольник прямоугольный'  if right_triangle?(a, b, c)
  puts 'Треугольник равнобедренный' if isosceles_triangle?(a, b, c)
  puts 'Треугольник равносторонний' if equilateral_triangle?(a, b, c)
  puts 'Треугольник разносторонний' if versatile_triangle?(a, b, c)
end

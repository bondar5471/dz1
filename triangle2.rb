def right_triangle?(a ,b ,c)
  array = [a,b,c]
  a = array.sort.reverse
  a[0]**2 == a[1]**2 + a[2] ** 2
end

def isosceles_triangle?(a ,b ,c)
  (a == b and a == c) || (b == a and b == c) || (c == a and c == b)
end

def equilateral_triangle?(a, b, c)
  a == b and a == c
end

def versatile_triangle?(a, b, c)
  !right_triangle?(a ,b ,c) and !isosceles_triangle?(a ,b ,c) and !equilateral_triangle?(a, b, c)
end

print 'Сторона A: '
a = gets.chomp.to_i
print 'Сторона b: '
b = gets.chomp.to_i
print 'Сторона C: '
c = gets.chomp.to_i

if a < 0 || b < 0 || c < 0
  puts 'Вы ввели некорректные данные'
else
  puts 'Треугольник прямоугольный'  if right_triangle?(a ,b ,c)
  puts 'Треугольник равнобедренный' if isosceles_triangle?(a ,b ,c)
  puts 'Треугольник равносторонний' if equilateral_triangle?(a, b, c)
  puts 'Треугольник разносторонний' if versatile_triangle?(a, b, c)
end
puts 'Как вас зовут?'
name = gets.chomp.to_i
puts 'Ваш рост'
growth = gets.chomp.to_i
cof = growth - 110

if cof < 0
  puts "#{name}, Ваш вес уже оптимальный"
else
  puts "#{name},  Ваш вес не оптимальный"
end

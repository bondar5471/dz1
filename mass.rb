puts "Как вас зовут ?"
name = gets.chomp
puts "Ваш рост?"
growth = gets.chomp
cof=growth.to_i-110
if cof<0
  puts "#{name} Ваш вес уже оптимальный "
else
  puts "#{name} Ваш вес не оптимальный "
  end

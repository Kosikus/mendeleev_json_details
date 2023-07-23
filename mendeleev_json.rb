require "json"

file_path = File.join(".", "elements.json")
elements = JSON.parse(File.read(file_path, encoding: "UTF-8"))

puts "У нас есть #{elements.size} элементов:"
puts elements.keys.join("\n")
puts

puts "Информацию о каком из элементов вывести на экран?"
element = gets.chomp
puts

if elements.key?(element)
  # Вывод информации о выбранном элементе
  elements[element].each_pair do |key, value|
    puts "#{key}: #{value}"
  end
else
  puts "Неизвестный элемент"
end

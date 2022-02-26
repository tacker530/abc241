# B - Pasta
N,M = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
# pp N,M,A,B

a = A 
B.each do |b|
  i = a.find_index(b)

  if i == nil then
    puts "No"
    exit
  else
    a.delete_at(i)
  end
end
puts "Yes"
# C - Connect 6
N = gets.chomp.to_i
S = []
N.times do |i|
  S[i] = gets.chomp.split(//)
end

pattern = []
pattern << "######"
pattern << "#####"
pattern << "####"
a = ["#","#","#","#",".","."]
pattern += a.permutation(6).to_a.uniq.map(&:join)

lat = []
all_lat = ""
S.each do |s|
  lat << s
  all_lat += s.join
end 
#pp lat

lng = []
all_lng = ""
S.transpose.each do |s|
  lng << s
  all_lng += s.join
end 
#pp lng


#left = all_lat.scan(/.{1,#{N+1}}/).map(&:chars)
#right = all_lng.scan(/.{1,#{N+1}}/).map(&:chars)
#pp left.transpose

#pp lat,lng
#pp "----------"
#pp left,right


# 横方向
lat.each do |s|
  pattern.each do |ptn|
    if s.join.match(ptn) then
      puts "Yes"
      exit
    end
  end
end

# 縦方向
lng.each do |s|
  pattern.each do |ptn|
    if s.join.match(ptn) then
      puts "Yes"
      exit
    end
  end
end




puts "No"
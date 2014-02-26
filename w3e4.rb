10.times do
  a = [*1930...1951]
  # a = (1930...1951).to_a
  puts "#{a.size}: #{a[rand(a.size)]}"
end
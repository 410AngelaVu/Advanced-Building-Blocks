require_relative './enumerable.rb'

%i[1 2 3 4 5].my_each { |n| puts n }

%i[1 2 3 4 5].my_each_with_index { |n| puts n }

arry = (%w[what is happening here].my_select { |n| n != 'is' })
puts arry

puts(%w[ant bear cat].my_all? { |word| word.length >= 3 })
puts(%w[ant bear cat].my_all? { |word| word.length >= 4 })

puts(%w[ant bear cat].my_any? { |word| word.length >= 3 })
puts(%w[ant bear cat].my_any? { |word| word.length >= 4 })

puts(%w[ant bear cat].my_none? { |word| word.length >= 5 })
puts(%w[ant bear cat].my_none? { |word| word.length >= 4 })

ary = [0, 2, 4, 2]
puts ary.my_count
puts ary.my_count(2)

a = [1, 2, 3]
puts(a.my_map { |n| n * 2 })
increment = proc { |n| n + 1 }
puts(a.my_map(increment))

require_relative './enumerable.rb'
array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_each.is_a?(Enumerator)

my_each_output = ''
block = proc { |num| my_each_output += num.to_s }
hash = { a: 1, b: 2, c: 3, d: 4, e: 5 }
puts hash.my_each(&block)

block = proc { |num| num < 4 }
range = (5..50)
puts range.my_each(&block)

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_each_with_index.is_a?(Enumerator)

h = { foo: 0, bar: 1, baz: 2 }
puts(h.my_each { |key, value| print "#{key}: #{value}" })

block = proc { |num| num < 4 }
range = (5..50)
puts range.my_each_with_index(&block)

enum = { a: 1, b: 2, c: 3, d: 4, e: 5 }
my_each_with_index_output = ''
block = proc { |num, idx| my_each_with_index_output += "Num: #{num}, idx: #{idx}\n" }
enum.my_each_with_index(&block)
puts my_each_with_index_output

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_select.is_a?(Enumerator)

h = { foo: 0, bar: 1, baz: 2 }
puts(h.my_each_with_index { |key, value| print "#{key}: #{value}" })

block = proc { |num| num < 4 }
range = (5..50)
puts range.my_select(&block)

true_array = [1, true, 'hi', []]
puts true_array.my_all?

false_array = [1, false, 'hi', []]
puts false_array.my_all?

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_all?(Integer)

numbers = [1, 2i, 3.14]
puts numbers.my_all?(Numeric)

words = %w[dog door rod blade]
puts words.my_all?(/d/)

words = %w[dog door rod blade]
puts words.my_all?(/o/)

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_all?(3)

true_array = [nil, false, true, []]
puts true_array.my_any?

false_array = [nil, false, nil, false]
puts false_array.my_any?

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_any?(Numeric)

words = %w[dog door rod blade]
puts words.my_any?(Integer)

false_array = [nil, false, nil, false]
puts false_array.my_none?

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_none?(Numeric)

array = [6, 1, 5, 2, 0, 1, 5, 4, 0, 7,
         3, 0, 4, 2, 3, 6, 3, 3, 1, 7, 7, 4,
         2, 8, 4, 4, 5, 2, 0, 2, 1, 0, 8, 0,
         1, 4, 1, 6, 5, 2, 3, 7, 8, 2, 1, 7,
         5, 5, 7, 0, 2, 0, 2, 5, 0, 7, 0, 7,
         1, 7, 1, 1, 3, 7, 4, 6, 5, 0, 5, 3,
         8, 1, 5, 8, 7, 7, 7, 7, 4, 2, 6, 1,
         0, 2, 0, 0, 6, 7, 5, 3, 4, 2, 3, 6,
         6, 0, 5, 3, 3, 4]
puts array.my_none?(String)

words = %w[dog door rod blade]
puts words.my_none?(/z/)

array = [2, 8, 6, 0, 8, 3, 2, 5, 8, 4, 6,
         8, 0, 7, 7, 4, 5, 3, 4, 5, 2, 8,
         1, 5, 7, 3, 6, 7, 0, 3, 5, 6, 4,
         8, 1, 8, 5, 6, 1, 0, 7, 0, 4, 0,
         8, 1, 1, 5, 2, 0, 2, 6, 2, 6, 7,
         2, 7, 3, 4, 6, 6, 8, 4, 6, 8, 0,
         6, 4, 3, 6, 5, 8, 2, 6, 2, 0, 0,
         1, 1, 1, 0, 5, 1, 1, 0, 2, 7, 6,
         0, 4, 5, 7, 5, 5, 7, 1, 1, 7, 3, 1]
block = proc { |num| num < 4 }
puts array.my_count(&block)

array = [2, 8, 6, 0, 8, 3, 2, 5, 8, 4, 6,
         8, 0, 7, 7, 4, 5, 3, 4, 5, 2, 8,
         1, 5, 7, 3, 6, 7, 0, 3, 5, 6, 4,
         8, 1, 8, 5, 6, 1, 0, 7, 0, 4, 0,
         8, 1, 1, 5, 2, 0, 2, 6, 2, 6, 7,
         2, 7, 3, 4, 6, 6, 8, 4, 6, 8, 0,
         6, 4, 3, 6, 5, 8, 2, 6, 2, 0, 0,
         1, 1, 1, 0, 5, 1, 1, 0, 2, 7, 6,
         0, 4, 5, 7, 5, 5, 7, 1, 1, 7, 3, 1]
puts array.my_map.is_a?(Enumerator)

operation = proc { |sum, n| sum + n }
puts array.my_inject(&operation)

array = [2, 8, 6, 0, 8, 3, 2, 5, 8, 4, 6,
         8, 0, 7, 7, 4, 5, 3, 4, 5, 2, 8,
         1, 5, 7, 3, 6, 7, 0, 3, 5, 6, 4,
         8, 1, 8, 5, 6, 1, 0, 7, 0, 4, 0,
         8, 1, 1, 5, 2, 0, 2, 6, 2, 6, 7,
         2, 7, 3, 4, 6, 6, 8, 4, 6, 8, 0,
         6, 4, 3, 6, 5, 8, 2, 6, 2, 0, 0,
         1, 1, 1, 0, 5, 1, 1, 0, 2, 7, 6,
         0, 4, 5, 7, 5, 5, 7, 1, 1, 7, 3, 1]
puts array.my_inject(:+)

range = Range.new(5, 50)
puts range.my_inject(:*)

puts range.my_inject(2, :*)

c = [1, 2, 3, 4]
p multiply_els(c)

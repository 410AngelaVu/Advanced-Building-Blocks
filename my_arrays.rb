require_relative './enumerable.rb'

%i[1 2 3 4 5].my_each { |n| puts n }

%i[1 2 3 4 5].my_each_with_index { |n| puts n }
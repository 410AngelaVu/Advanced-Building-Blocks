module Enumerable
  def my_each
    i = 0
    while i < to_a.length
      yield to_a[i]
      i += 1
    end
    self
  end

  def my_each_with_index
    i = 0
    index = 0
    while i < to_a.length
      yield i, index
      i += 1
    end
  end

  def my_select
    b = []
    to_a.my_each do |i|
      b.push i if yield i
    end
    b
  end

  def my_all?
    result = true
    if to_a.is_a?(Array)
      to_a.my_each { |item| result = false unless yield(item) }
    elsif to_a.is_a?(Hash)
      to_a.my_each { |k, v| result = false unless yield(k, v) }
    end
    result
  end
end

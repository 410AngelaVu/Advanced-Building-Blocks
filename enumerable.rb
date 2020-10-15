module Enumerable
  def my_each
    i = 0
    while i < to_a.length
      yield to_a[i]
      i += 1
    end
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

  def my_any?
    result = false
    if to_a.is_a?(Array)
      to_a.my_each { |item| result = true if yield(item) }
    elsif to_a.is_a?(Hash)
      to_a.my_each { |k, v| result = true if yield(k, v) }
    end
    result
  end

  def my_none?
    result = true
    if to_a.is_a?(Array)
      to_a.my_any? { |item| result = false if yield(item) }
    elsif to_a.is_a?(Hash)
      to_a.my_any? { |k, v| result = false if yield(k, v) }
    end
    result
  end

  def my_count(xyz = nil)
    counter = 0
    to_a.my_each { |item| counter += 1 if item == xyz || xyz.nil? }
    counter
  end
end

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
end

# rubocop:disable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Metrics/ModuleLength,

module Enumerable
  def my_each
    return to_enum unless block_given?

    n = 0
    while n < to_a.length
      yield(self[n]) if is_a?(Array)
      yield([keys[n], values[n]]) if is_a?(Hash)
      yield(to_a[n]) if is_a?(Range)
      n += 1
    end
    self
  end

  def my_each_with_index(&block)
    return to_enum(:my_each_with_index) unless block_given?

    n = 0
    while n < to_a.length
      block.call(self[n], n) if is_a?(Array)
      yield([keys[n], values[n]]) if is_a?(Hash)
      block.call(to_a[n], n) if is_a?(Range)
      n += 1
    end
    self
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    if is_a?(Array) || is_a?(Range)
      result = []
      my_each { |element| result << element if yield(element) }

    elsif is_a?(Hash)
      result = {}
      my_each { |e_key, e_value| result[e_key] = e_value if yield(e_key, e_value) }
    end
    result
  end

  def my_all?(param = nil)
    if block_given?
      to_a.my_each { |item| return false if yield(item) == false }
      return true
    elsif param.nil?
      to_a.my_each { |item| return false if item.nil? || item == false }
    elsif !param.nil? && (param.is_a? Class)
      to_a.my_each { |item| return false unless [item.class, item.class.superclass].include?(param) }
    elsif !param.nil? && param.class == Regexp
      to_a.my_each { |item| return false unless param.match(item) }
    else
      to_a.my_each { |item| return false if item != param }
    end
    true
  end

  def my_any?(param = nil)
    if block_given?
      to_a.my_each { |item| return true if yield(item) }
      return false
    elsif param.nil?
      to_a.my_each { |item| return true if item }
    elsif !param.nil? && (param.is_a? Class)
      to_a.my_each { |item| return true if [item.class, item.class.superclass].include?(param) }
    elsif !param.nil? && param.class == Regexp
      to_a.my_each { |item| return true if param.match(item) }
    else
      to_a.my_each { |item| return true if item == param }
    end
    false
  end

  def my_none?(param = nil)
    if block_given?
      !my_any?(&Proc.new)
    else
      !my_any?(param)
    end
  end

  def my_count(param = nil)
    f = 0
    if block_given?
      to_a.my_each { |item| f += 1 if yield(item) }
    elsif !block_given? && param.nil?
      f = to_a.length
    else
      f = to_a.my_select { |item| item == param }.length
    end
    f
  end

  def my_map(proc = nil)
    return to_enum(:my_map) unless block_given? || !proc.nil?

    arr = []
    if proc.nil?
      to_a.my_each { |item| arr << yield(item) }
    else
      to_a.my_each { |item| arr << proc.call(item) }
    end
    arr
  end

  def my_inject(initial = nil, sym = nil)
    if (!initial.nil? && sym.nil?) && (initial.is_a?(Symbol) || initial.is_a?(String))
      sym = initial
      initial = nil
    end
    if !block_given? && !sym.nil?
      to_a.my_each { |item| initial = initial.nil? ? item : initial.send(sym, item) }
    else
      to_a.my_each { |item| initial = initial.nil? ? item : yield(initial, item) }
    end
    initial
  end
end

def multiply_els(arr)
  arr.my_inject(1) { |item, total| total * item }
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/PerceivedComplexity, Metrics/ModuleLength,

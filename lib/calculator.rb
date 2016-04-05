class Calculator

  def int_add(numbers)
    empty?(numbers) ? 0 : sum(numbers)
  end

  private

  def sum(numbers)
    to_array(numbers).inject(:+)
  end

  def to_array(numbers)
    split(numbers).map { |number| number.to_i }
  end

  def split(numbers)
    replace_new_lines(numbers).split(',')
  end

  def replace_new_lines(numbers)
     numbers.gsub(/[\\n]/,',')
  end

  def empty?(numbers)
    numbers == ""
  end

end

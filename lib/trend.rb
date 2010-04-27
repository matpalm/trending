@@SLIDING_WINDOW = ARGV.include? 'sliding' 

class Trend < Array

  def initialize values=[], sliding_window=false, sliding_window_length=10
    values.each { |v| self.<< v }
    @sliding_window = sliding_window
    @sliding_window_length = sliding_window_length
  end

  alias :old_append :<<
  def << e
    old_append e
    shift if @sliding_window && length > @sliding_window_length
  end

  def oldest_value
    first
  end

  def mean
    inject(:+).to_f / size
  end

  # sample standard deviation (ie divisor is size-1, not size)
  def sd
    return 0 unless size>1
    _mean = mean
    sum_of_squares = 0
    each { |e| sum_of_squares += ( e - _mean )**2 }
    Math.sqrt( sum_of_squares / (size-1) )
  end

  def min_trending_value
    mean + (3*sd)
  end
  
  def trend_value value
    diff = value - min_trending_value
    percentage_over = diff.to_f / min_trending_value
    percentage_over
  end

  def trending? value
    trend_value(value) > 0
  end

end

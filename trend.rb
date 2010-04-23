@@SLIDING_WINDOW = ARGV.include? 'sliding' 

class Trend < Array

  def initialize values=[], sliding_window=false, sliding_window_length=10
    values.each { |v| self.<< v }
    @sliding_window = sliding_window
    @sliding_window_length = sliding_window_length
  end

  alias :old_append :<<
  def << e
    @mean = @sd = nil
    old_append e
    shift if @sliding_window && length > @sliding_window_length
  end

  def mean
    @mean ||= lambda {
      inject(:+).to_f / size
    }.call
  end

  def sd
    @sd ||= lambda {
      _mean = mean
      sum_of_squares = 0
      each { |e| sum_of_squares += ( e - _mean )**2 }
      Math.sqrt( sum_of_squares / size )
    }.call
  end

  def min_trending_value
    mean + (2*sd)
  end
  
  def trend_value value
    diff = value - min_trending_value
    percentage_over = diff.to_f / min_trending_value
    puts "self=#{self.inspect} value=#{value} mean=#{mean} sd=#{sd} min_trending_value=#{min_trending_value} diff=#{diff} percentage_over=#{percentage_over}"
    percentage_over
  end

  def trending? value
    trend_value(value) > 0
  end

end

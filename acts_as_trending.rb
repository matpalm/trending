@@SLIDING_WINDOW = ARGV.length > 0 && ARGV.first == 'sliding' # OMG! OPTS PLZ

class Array

  alias :old_append :<<

  def << e
    @mean = @sd = nil
    old_append e
    shift if @@SLIDING_WINDOW && length > 10
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

  def trending? value
    trend_value(value) > 0
  end

  def min_trending_value
    mean + (2*sd)
  end
  
  def trend_value value
    #range_min = mean-(2*sd)
    diff = value - min_trending_value
    percentage_over = diff.to_f / range_max
    puts "value=#{value} mean=#{mean} sd=#{sd} range_max=#{range_max} diff=#{diff} percentage_over=#{percentage_over}"
  end

end

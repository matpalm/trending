class TrendStreaming
  
  attr_reader :mean, :std_dev

  def initialize
    @n = 0
    @mean = @stddev = 0.0
  end

  def << e
    @n += 1
    n_1 = @n - 1
    if @n==1
      @mean = e
      @mean_sqr = e ** 2
      @std_dev = 0
    else
      @mean =     ((n_1.to_f * @mean) + e ) / @n
      @mean_sqr = ((n_1.to_f * @mean_sqr) + e**2) / @n
      @std_dev =  Math.sqrt(((@n * @mean_sqr) - (@n * (@mean**2))) / (@n-1))
    end
  end


end

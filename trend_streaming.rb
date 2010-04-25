class TrendStreaming
  
  attr_reader :mean, :std_dev

  def initialize
    @n = 0
    @mean = @mean_sqr = @std_dev = 0.0
   end

  def << e
    @mean =     ((@n.to_f * @mean) + e ) / (@n+1)
    @mean_sqr = ((@n.to_f * @mean_sqr) + e**2) / (@n+1)
    @std_dev =  @mean==e ? 0 : Math.sqrt((((@n+1) * @mean_sqr) - ((@n+1) * (@mean**2))) / @n)    
    @n += 1
  end


end

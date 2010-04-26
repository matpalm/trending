class TrendStreaming
  
  attr_reader :mean, :std_dev

  def initialize
    @n = 0
    @mean = @mean_sqr = @std_dev = 0.0
   end

  def << e
    @mean =     ((@n.to_f * @mean) + e ) / (@n+1)
    @mean_sqr = ((@n.to_f * @mean_sqr) + e**2) / (@n+1)

    lhs = (@n+1) * @mean_sqr
    rhs = (@n+1) * (@mean**2)
    puts "lhs=#{lhs} rhs=#{rhs}"
    @std_dev =  @mean==e ? 0 : Math.sqrt( (lhs-rhs) / @n)    
    @n += 1
  end


end

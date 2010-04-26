require "#{File.dirname(__FILE__)}/../trend.rb"

describe 'simple mean and std dev' do
  before do
    @trend = Trend.new([2,3])
  end
  it 'should know mean' do
    @trend.mean.should == 2.5
  end
  it 'should know std dev' do
    @trend.sd.should be_close(0.7071068, 0.00001)
  end
end

describe 'trending without zero values' do
  before do
    @trend = Trend.new([1,2,1,2,3])
  end
  
  it 'should know that a term that occurs a lot is not trending' do
    @trend.trending?(2).should be_false
  end

  it 'should know that a term that occurs infrequently then suddenly a lot is trending' do
    @trend.trending?(10).should be_true
  end

end

describe 'trending with zero values' do
  before do
    @trend = Trend.new([1,2,0,2,2])
  end

  it 'should cal min_trend value' do
    @trend.min_trending_value.should be_close(3.18854, 0.01)
  end 
end

describe 'trending adding values explicitly' do
  before do 
    @trend = Trend.new
    [1,2,0,2,2].each { |e| @trend << e }
  end

  it 'should behave the same' do
    @trend.min_trending_value.should be_close(3.18854,0.01)
  end
end

describe 'sliding window' do
  describe 'adding values' do
    it 'should remove values as the window slides' do
      @trend = Trend.new [], true, 3
      @trend << 3
      @trend.oldest_value.should == 3
      @trend << 4
      @trend.oldest_value.should == 3
      @trend << 5
      @trend.oldest_value.should == 3
      @trend << 6
      @trend.oldest_value.should == 4
    end
  end
end




require "#{File.dirname(__FILE__)}/../trend_streaming.rb"

describe 'trend streaming' do
  describe 'for a single item' do
    before do
      @trend = TrendStreaming.new
      @trend << 3
    end
    it 'should calculate the mean' do
      @trend.mean.should == 3
    end
    it 'should calculate the std dev' do    
      @trend.std_dev.should == 0
    end    
  end
  describe 'for multiple identical items' do
    before do
      @trend = TrendStreaming.new
      @trend << 3
      @trend << 3
    end
    it 'should calculate the mean' do
      @trend.mean.should == 3
    end
    it 'should calculate the std dev' do    
      @trend.std_dev.should == 0
    end    
  end

  describe 'for multiple identical items' do
    before do
      @trend = TrendStreaming.new
      @trend << 3
      @trend << 3
    end
    it 'should calculate the mean' do
      @trend.mean.should == 3
    end
    it 'should calculate the std dev' do    
      @trend.std_dev.should == 0
    end    
  end

  describe 'for multiple different items' do
    before do
      @trend = TrendStreaming.new
      @trend << 3
      @trend << 4
      @trend << 5
    end
    it 'should calculate the mean' do
      @trend.mean.should == 4
    end
    it 'should calculate the std dev' do    
      @trend.std_dev.should == 1
    end    
  end

  describe 'for another random set' do
    before do
      @trend = TrendStreaming.new
      [3,1,4,1,5,9,2,6,5,3,5,8].each { |e| @trend << e }
    end
    it 'should calculate the mean' do
      @trend.mean.should be_close(4.33333333333333, 0.00001)
    end
    it 'should calculate the std dev' do    
      @trend.std_dev.should be_close(2.5346089292517, 0.00001)
    end    
  end

end

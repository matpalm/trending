require "#{File.dirname(__FILE__)}/../trend.rb"

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
    @trend.min_trending_value.should == 3.0
  end 
end

describe 'trending adding values explicitly' do
  before do 
    @trend = Trend.new
    [1,2,0,2,2].each { |e| @trend << e }
  end

  it 'should behave the same' do
    @trend.min_trending_value.should == 3.0
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
    en
  end
end

=begin
describe 'adding values by index' do

  describe 'with explicit zeros' do

    before do 
      @trend = Trend.new
      [1,2,0,2,2].each_with_index { |e,idx| @trend.add_indexed e, idx }
    end

    it 'should behave the same' do
      @trend.min_trending_value.should == 3.0
    end

  end

  describe 'with explicit zeros' do

    before do 
      @trend = Trend.new
      [1,2,0,2,2].each_with_index { |e,idx| @trend.add_indexed e, idx }
    end

    it 'should behave the same' do
      @trend.min_trending_value.should == 3.0
    end

  end

end
=end


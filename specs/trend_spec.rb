require "#{File.dirname(__FILE__)}/../trend.rb"

describe 'trending' do
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

require 'parse.rb'

def time day, h, m, s
  day_to_number = { :mon => 1, :tue => 2, :wed => 3, :thr => 4, :fri => 5, :sat => 6, :sun => 7 }
  Time.mktime 1, 1,day_to_number[day], h,m,s
end

describe 'parse' do

  it 'should correctly chunk daily timestamps by minute quarter' do
    daily_timeslot_for(time(:mon, 0,5,0)).should == 0
    daily_timeslot_for(time(:wed, 0,20,0)).should == 1
    daily_timeslot_for(time(:fri, 23,55,0)).should == 95
  end

  it 'should correctly chunk weekly timestamps by hour' do
    weekly_timeslot_for(time(:sun, 0,5,0)).should == 0
    weekly_timeslot_for(time(:sun, 0,55,0)).should == 0
    weekly_timeslot_for(time(:sun, 1,5,0)).should == 1
    weekly_timeslot_for(time(:sun, 23,5,0)).should == 23
    weekly_timeslot_for(time(:mon, 0,5,0)).should == 24
    weekly_timeslot_for(time(:sat, 23,5,0)).should == 167
  end

end


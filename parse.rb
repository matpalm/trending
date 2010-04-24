require 'date'
require 'sanitise'

BASELINE = DateTime.parse 'Mon Jan 25 10:22:59 +0000 2010'
def days_since_base_line datetime
  datetime - BASELINE
end

class String
  def terms
    self.sanitise.split.select {|t| t.length>1}
  end
end

def weekly_timeslot_for time, bucket_size_mins
  minutes_since_start_of_week = time.wday * 24 * 60 + time.hour * 60 + time.min
  minutes_since_start_of_week / bucket_size_mins
end

def daily_timeslot_for time, bucket_size_mins
  daily_timeslot_since_epoch_for(time, bucket_size_mins) % 24
end

def daily_timeslot_since_epoch_for time, bucket_size_mins
  @epoch ||= time
  days_since_epoch = time - @epoch
  minutes_since_since_epoch = days_since_epoch * 24 * 60
  (minutes_since_since_epoch / bucket_size_mins).to_i
end

def for_each_post_from_stdin
  STDIN.each do |record|
    datetime, tweet = record.strip.split("\t")      
    yield DateTime.parse(datetime), tweet
  end
end


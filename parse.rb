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

def weekly_timeslot_for time, min_bucket_size
  minutes_since_start_of_week = time.wday * 24 * 60 + time.hour * 60 + time.min
  minutes_since_start_of_week / min_bucket_size
end

def daily_timeslot_for time, min_bucket_size
  minutes_since_midnight = time.hour * 60 + time.min
  minutes_since_midnight / min_bucket_size
end

def for_each_post_from_stdin
  STDIN.each do |record|
    datetime, tweet = record.strip.split("\t")      
    yield DateTime.parse(datetime), tweet
  end
end


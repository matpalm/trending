
class String
  def terms
    self.downcase.gsub("'",'').gsub(/[^a-z0-9#_]/,' ').gsub("/n",' ').split.select {|t| t.length>3}
  end
end

def weekly_timeslot_for time, min_chunk=60
  minutes_since_start_of_week = time.wday * 24 * 60 + time.hour * 60 + time.min
  minutes_since_start_of_week / min_chunk
end

def daily_timeslot_for time, min_chunk=15
  minutes_since_midnight = time.hour * 60 + time.min
  minutes_since_midnight / min_chunk
end

def for_each_post_from_stdin
  STDIN.each do |record|
    next if record =~ /^messageID/
    cols = record.strip.split("\t")
    time_s, subject, post = [10,6,7].collect { |i| cols[i] }
    yield Time.at(time_s.to_i/1000), subject, post 
  end
end


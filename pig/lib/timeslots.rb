require 'date'

class Fixnum
  def seconds
    self
  end
  alias :second :seconds
  def minutes
    60 * seconds
  end
  alias :minute :minutes
  def hours
    60 * minutes
  end
  alias :hour :hours
end

class TimeSlots

  def initialize bucket_size_in_seconds
    @bucket_size = bucket_size_in_seconds
  end

  def timeslot_since_epoch epoch_time
    @epoch ||= epoch_time
    seconds_since_epoch = epoch_time - @epoch
    (seconds_since_epoch / @bucket_size).to_i   
  end

  def daily_timeslot_for datetime_string
    datetime = DateTime.parse datetime_string
    seconds_since_start_of_day = datetime.day_fraction.numerator
    seconds_since_start_of_day / @bucket_size
  end

=begin
  def weekly_timeslot_for datetime_string
    datetime = DateTime.parse datetime_string
    seconds_since_start_of_week = datetime.wday * 24 * 60 + datetime.hour * 60 + dateOBtime.min * 60   
    seconds_since_start_of_week / @bucket_size
  end
=end

end

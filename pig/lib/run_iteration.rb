#!/usr/bin/env ruby

def on_ec2
  return @on_ec2 unless @on_ec2.nil?
  @on_ec2 = (!!(`hostname` =~ /amazon/))
end

class Fixnum
  def as_3digits
    sprintf("%03d",self)
  end
end

def piggybank_jar_location
  on_ec2 ? '/usr/lib/pig/contrib/piggybank/java/piggybank.jar' : '/home/mat/dev/trending/pig/piggybank.jar' 
end

def parallel_level
  on_ec2 ? 5 : 1
end

def cmd_for_iter n
  cmd = "time pig"
  cmd << " -x local" if !on_ec2
  cmd << " -p iter=#{n}"
  cmd << " -p input=#{n.as_3digits}"
  cmd << " -p output=#{(n+1).as_3digits}"
  cmd << " -p pbjar=#{piggybank_jar_location}"
  cmd << " -p para=#{parallel_level}"
  cmd << " trending.pig"
  cmd
end

puts cmd_for_iter ARGV.first.to_i if ARGV.length==1

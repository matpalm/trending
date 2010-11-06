#!/usr/bin/env ruby

def on_ec2
  return @on_ec2 unless @on_ec2.nil?
  @on_ec2 = (!!(`hostname` =~ /amazon/))
end

class Fixnum
  def as3digits
    sprintf("%03d",self)
  end
end

def piggybank_jar_location
  on_ec2 ? '/usr/lib/pig/contrib/piggybank/java/piggybank.jar' : '/home/mat/dev/trending/pig/piggybank.jar' 
end

def parallel_level
  on_ec2 ? 5 : 1
end

def files_to_clean_for_iter n
  ["data/model/#{(n+1).as3digits}",
   "data/trending/#{n.as3digits}",
   "data/trending_docs/#{n.as3digits}",
   "data/debug/*#{n.as3digits}"
  ]
end

def cmd_for_iter n
  cmd = "time pig"
  cmd << " -x local" if !on_ec2
  cmd << " -p input=#{n.as3digits}"
  cmd << " -p output=#{(n+1).as3digits}"
  cmd << " -p pbjar=#{piggybank_jar_location}"
  cmd << " -p para=#{parallel_level}"
  cmd << " trending.pig"
  cmd
end

def run cmd
  puts "$ #{cmd}"
  puts `#{cmd}`
end

if ARGV.length==1
  N = ARGV.first.to_i
  run "rm #{files_to_clean_for_iter(N).join(' ')}"
  run cmd_for_iter(N)
end

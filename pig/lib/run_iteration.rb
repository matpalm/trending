#!/usr/bin/env ruby

ITERATIONS_UNTIL_NGRAM_EXPIRES = 10

def on_ec2
  return @on_ec2 unless @on_ec2.nil?
  @on_ec2 = (!!(`hostname` =~ /amazon/))
end

def three_digits n
  sprintf("%03d",n)
end

def cmd_for_iter n
  cull = n - ITERATIONS_UNTIL_NGRAM_EXPIRES
  cull = 0 if cull<0
  
  para = on_ec2 ? 5 : 1
  
  piggybank_jar = on_ec2 ? '/usr/lib/pig/contrib/piggybank/java/piggybank.jar' : '/home/mat/dev/trending/pig/piggybank.jar' 
  
  cmd = "time pig -x local"
  cmd += " -p input=#{three_digits(n)}"
  cmd += " -p output=#{three_digits(n+1)}"
  cmd += " -p cull=#{cull}"
  cmd += " -p para=#{para}"
  cmd += " -p piggybankjar=#{piggybank_jar}"
  cmd += " trending.pig"
  
  cmd
end

puts cmd_for_iter ARGV.first.to_i if ARGV.length==1

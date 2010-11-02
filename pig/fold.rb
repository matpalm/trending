#!/usr/bin/env ruby
# handle the output from a pig cogrouping

# expect input lines of three types,
# a line representing just the model
# (TOKEN NUM_OCCURENCES MEAN MEAN_SQR) (NULL_CHUNK)

# a line representing model and chunk
# (TOKEN NUM_OCCURENCES MEAN MEAN_SQR) (TOKEN FREQ)

# a line representing just the chunk
# (NULL_MODEL) (TOKEN FREQ)

NO_FREQ = -1

def remit_model_unchanged fields
  fields += [ NO_FREQ, 'unchanged' ] # trending check flags
  puts fields.join("\t")
end

def fold_value_into_model fields
  converted = fields.zip(%w{s i f f s i}).map{|v,c| v.send("to_#{c}")}
  model_token, num_occurences, mean, mean_sqrs, chunk_token, freq = converted
  raise "group fail? #{fields.join("\t")}" unless model_token == chunk_token

  total = mean * num_occurences
  total_sqrs = mean_sqrs * num_occurences 

  num_occurences += 1
  total += freq
  total_sqrs += freq * freq  
  
  mean = total / num_occurences
  mean_sqrs = total_sqrs / num_occurences    

  model_fields = [ model_token, num_occurences, mean, mean_sqrs ]
  model_fields += [ freq, 'changed' ] # trending check flags
  puts model_fields.join("\t")
end

def emit_value_as_new_model_entry fields
  null_value, token, freq = fields
  freq = freq.to_i
  model_fields = [ token, 1, freq, freq*freq ]
  model_fields += [ NO_FREQ, 'unchanged' ] # trending check flags
  puts model_fields.join("\t")
end


STDIN.each do |line|
  fields = line.chomp.split("\t")

  case fields.length

  when 4 # model only, just reemit
    remit_model_unchanged fields

  when 6 # model and value   
    fold_value_into_model fields

  when 3 # value only    
    emit_value_as_new_model_entry fields

  else
    raise "unexpected line #{line}"
  end
   
end

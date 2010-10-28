def select_sql from, to
  from = 1286854561196 if from > 1286854561196
  "select m.messageid, m.creationDate, m.body, f.name from jivemessage m  join jiveforum f on m.forumid = f.forumid where m.subject<>'Test post' and m.creationDate < #{from} and m.creationDate > #{to}"  
  # "select count(*) from jivemessage m  join jiveforum f on m.forumid = f.forumid where m.subject<>'Test post' and m.creationDate < #{from} and m.creationDate > #{to}"  
end

chunk = 500000000
d = 1286854561196
while d > 1275000000000
  sql = select_sql d, d-chunk
  ActiveRecord::Base.connection.select_rows(sql).each { |row| puts row.join("\t").gsub(/\n/,' ') }
  d -= chunk
end
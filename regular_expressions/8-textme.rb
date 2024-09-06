#!/usr/bin/env ruby
#Define the log entry pattern using regular exp

log_entry = ARGV[0]

#Regular expression to capture the sender, receiver, and flags

regex = /\[from:(.*?)\] \[to:(.*?)\] \[flags:(.*?)\]/

#Scan the log entry for matches

matches = log_entry.scan(regex)

#Print the result in the format [SENDER], [RECEIVER], [FLAGS]

matches.each do |sender, receiver, flags|
  puts "#{sender},#{receiver},#{flags}"
end 

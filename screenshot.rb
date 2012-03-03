#!/usr/bin/ruby

dt = Time.now
path = "/Users/rkabir/panopticon/"
external = "external/"
year = dt.year.to_s
month = dt.month.to_s.length == 1 ? "0#{dt.month}" : dt.month.to_s
day = dt.day.to_s.length == 1 ? "0#{dt.day}" : dt.day.to_s

date_path = "#{year}/#{month}/#{day}/"
path = path + date_path

%x[ mkdir -p #{path}]

filename1 = path + "#{year}_#{month}_#{day}_#{dt.hour}_#{dt.min}_#{dt.sec}.jpg"
filename2 = path + external + "#{year}_#{month}_#{day}_#{dt.hour}_#{dt.min}_#{dt.sec}_2.jpg"

%x[ /usr/sbin/screencapture -tjpg -x #{filename1} #{filename2}]
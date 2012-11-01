#!/usr/bin/ruby

dt = Time.now
path = "/Users/rkabir/panopticon/"
external = "external/"
year = dt.year.to_s
month = dt.month.to_s.length == 1 ? "0#{dt.month}" : dt.month.to_s
day = dt.day.to_s.length == 1 ? "0#{dt.day}" : dt.day.to_s

date_path = "#{year}/#{month}/#{day}/"
path = path + date_path
external_path = path + external

%x[ mkdir -p #{path}]
%x[ mkdir -p #{external_path}]

file_base = "#{year}_#{month}_#{day}_#{dt.hour}_#{dt.min}_#{dt.sec}"

filename1 = path + "#{file_base}.jpg"
filename2 = external_path + "#{file_base}_2.jpg"

%x[ /usr/sbin/screencapture -tjpg -x #{filename1} #{filename2}]

#!/usr/bin/ruby

dt = Time.now
path = "/Users/rkabir/panopticon/"
external = "external/"
filename1 = path + "#{dt.year}_#{dt.mon}_#{dt.day}_#{dt.hour}_#{dt.min}_#{dt.sec}.jpg"
filename2 = path + external + "#{dt.year}_#{dt.mon}_#{dt.day}_#{dt.hour}_#{dt.min}_#{dt.sec}_2.jpg"

%x[ /usr/sbin/screencapture -tjpg -x #{filename1} #{filename2}]
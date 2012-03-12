require_relative 'svm_scaffold'

ss = SvmScaffold.new

ss.positive = [[1,0,1], [1,1,1]]
ss.negative = [[-1, 0, -1], [-1, -1, -1]]

# ss.positive = [[1,0,1]]
# ss.negative = [[-1,0,-1]]

ss.train

puts ss.predict([1,2,1])

puts ss.predict([1,0.5,1])

puts ss.predict([-1,1,0.5])
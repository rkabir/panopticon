require 'rubygems'
require 'svm'

prob = Problem.new([1,-1],[[1,0,1],[-1,0,-1]])

class SvmScaffold

  attr_accessor :positive, :negative, :problem, :model

  def initialize
    @positive = []
    @negative = []
    @problem = nil
    @param = Parameter.new(:kernel_type => LINEAR, :C => 10)
    @model = nil
  end

  def add_positive(feature_vector)
    @positive << [feature_vector]
  end
  
  def add_negative(feature_vector)
    @negative << [feature_vector]
  end
  
  def train
    pos_array = (1..@positive.size).to_a.map{|x| 1}
    neg_array = (1..@negative.size).to_a.map{|x| -1}

    training_array = pos_array + neg_array
    examples = @positive + @negative
    
    @problem = Problem.new(training_array, examples)
    @model = Model.new(@problem, @param)
  end
  
  def predict(feature_vector)
    @model.predict(feature_vector)
  end
  
  def save(filename = "test.model")
    @model.save(filename)
  end
  
  def load(filename = "test.model")
    @model = Model.new(filename)
  end
end
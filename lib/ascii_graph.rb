require "rubygems"

gem "activesupport", "= 2.3.5"
require "active_support"

class ASCIIGraph
  attr_reader :generator

  def initialize opts={}
    @generator = generator_from(opts[:type]).new(opts.except(:type))
  end

  def to_s
    generator.to_s
  end

  def generator_from klass
    self.class.const_get(klass.to_s.camelize)
  end
end

require File.dirname(__FILE__) + "/ascii_graph/progress_bar"

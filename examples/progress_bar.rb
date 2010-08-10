require File.dirname(__FILE__) + "/../lib/ascii_graph"

# With one marker
puts ASCIIGraph.new(:type => :progress_bar, :range => 1..10, :marker => 3).to_s
# => |--x-------|

# With two markers on a longer bar
puts ASCIIGraph.new(:type => :progress_bar, :range => 1..15, :marker => [3,5]).to_s
# => |--x-x----------|

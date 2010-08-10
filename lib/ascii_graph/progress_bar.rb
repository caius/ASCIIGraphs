class ASCIIGraph
  class ProgressBar
    def initialize opts
      @config = opts
    end

    def calc!
      # Map all the bits wanted
      bits = @config[:range].to_a.map {|x| "-" }
      # Set the markers to their bit
      [*@config[:marker]].each do |i|
        bits[i-1,1] = "x"
      end
      bits << "|"
      bits.insert(0, "|")
      @output = bits.join("")
    end

    def graph
      @output ||= calc!
    end
    alias_method :to_s, :graph
  end
end
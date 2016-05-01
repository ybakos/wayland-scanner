require 'minitest/autorun'

describe Scanner do

  before do
    #TODO
  end

  describe "when provided a path to a file that does not exist" do
    it "should exit with a 'file not found' message"
      #TODO
    end
  end

  describe "when provided a protocol xml file that doesn't conform to the dtd" do
    it "should exit with a 'does not conform' message" do
      #TODO
    end
  end

  describe "when provided with a valid protocol xml file" do
    it "should generate a corresponding header file" do
      #TODO
    end
  end

  describe "Scanner Benchmark" do
    if ENV["BENCHMARK"]
      bench_performance_linear "todo", "benchmark.xml" do |n|
        100.times { @obj.todo(n) }
      end
    end
  end

end

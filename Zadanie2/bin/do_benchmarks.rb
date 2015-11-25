require_relative '../lib/bubbleSort'
require_relative '../lib/quickSort'
require_relative '../lib/insertSort'
require 'benchmark'


array = (1..1000).map { rand }

Benchmark.bm(4) do |x|
  x.report("sort! 1000") { array.dup.sort! }
  x.report("insert_sort! 1000") { insert_sort!(array) }
  x.report("bubble_sort! 1000") { bubble_sort!(array) }
  x.report("quick_sort! 1000") { quick_sort!(array) }
end


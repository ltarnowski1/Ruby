require_relative '../lib/bubbleSort'
require_relative '../lib/quickSort'
require_relative '../lib/insertSort'
require 'benchmark'

array5 = (1..500_000).map { rand }
array10 = (1..1_000_000).map { rand }

Benchmark.bm(4) do |x|
  x.report('sort!   500_000') { array5.dup.sort! }
  x.report('sort! 1_000_000') { array10.dup.sort! }
end
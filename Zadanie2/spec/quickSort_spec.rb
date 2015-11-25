require 'simplecov'
require 'rspec'
require_relative '../lib/quickSort.rb'
SimpleCov.start

describe '#quickSort' do

  it 'should not raise error'  do
    expect { quick_sort!([122,50]) }.not_to raise_error
  end

  it 'These should be equal' do
    expect(quick_sort!([3,2,1])).to eq([1,2,3])
  end

  it 'These should not be equal' do
    expect(quick_sort!([34,64,12])).not_to eq([34,12,64])
  end

end
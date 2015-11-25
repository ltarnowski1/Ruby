require 'simplecov'
require 'rspec'
require_relative '../lib/insertSort.rb'
SimpleCov.start


describe '#insertSort' do

  it 'should raise error' do
    expect { insert_sort!([]) }.to raise_error('Array is empty')
  end
  it 'should raise error too' do
    expect { insert_sort!([2]) }.to raise_error('Nothing to sort')
  end
  it 'should not raise error'  do
    expect { insert_sort!([122,50]) }.not_to raise_error
  end
  it 'These should be equal' do
    expect(insert_sort!([34,12,78,4])).to eq([4,12,34,78])
  end
  it 'These should not be equal' do
    expect(insert_sort!([34,64,12])).not_to eq([34,12,64])
  end

end
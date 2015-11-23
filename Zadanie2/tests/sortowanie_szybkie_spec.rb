require 'simplecov'
require 'rspec'
require '../sortowanie_szybkie.rb'
SimpleCov.start

describe '#sortowanie_szybkie' do

  it 'should not raise error'  do
    expect { quicksort([122,50]) }.not_to raise_error
  end

  it 'These should be equal' do
    expect(quicksort([3,2,1])).to eq([1,2,3])
  end

  it 'These should not be equal' do
    expect(quicksort([34,64,12])).not_to eq([34,12,64])
  end

end
require 'simplecov'
require 'rspec'
require '../sortowanie_babelkowe.rb'
SimpleCov.start


describe '#sortowanie_babelkowe' do

  it 'should raise error' do
    expect { bubblesort([]) }.to raise_error('Array is empty')
  end
  it 'should raise error too' do
    expect { bubblesort([2]) }.to raise_error('Nothing to sort')
  end
  it 'should not raise error'  do
    expect { bubblesort([122,50]) }.not_to raise_error
  end
  it 'These should be equal' do
    expect(bubblesort([34,12,78,4])).to eq([4,12,34,78])
  end
  it 'These should not be equal' do
    expect(bubblesort([34,64,12])).not_to eq([34,12,64])
  end

end
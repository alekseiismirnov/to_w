require 'rspec'
require 'to_w'

describe 'Integer#to_w' do
  it 'converts 1 to one' do
    expect(1.to_w).to eq('one')
  end

  it 'converts 2 to two' do
    expect(2.to_w).to eq('two')
  end

  it 'converts 9 to nine' do
    expect(9.to_w).to eq('nine')
  end

  it 'converts 15 to fifteen' do
    expect(15.to_w).to eq('fifteen')
  end

  it 'converts 10 to ten' do
    expect(10.to_w).to eq('ten')
  end

  it 'correctly interprets numbers from 21 to 99' do
    expect(21.to_w).to eq('twenty one')
    expect(99.to_w).to eq('ninty nine')
    expect(48.to_w).to eq('forty eight')
  end

  it 'works with numbers from 100 to 999' do
    expect(100.to_w).to eq('one hundred')
    expect(999.to_w).to eq('nine hundred ninty nine')
    expect(820.to_w).to eq('eigh hundred twenty')
    expect(295.to_w).to eq('two hundred ninty five')
  end

end

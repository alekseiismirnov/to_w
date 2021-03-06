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
    expect(820.to_w).to eq('eight hundred twenty')
    expect(295.to_w).to eq('two hundred ninty five')
  end

  it 'works with numbers from 999 to quadrillion' do
    expect(1000.to_w).to eq('one thousand')
    expect(99999999999999.to_w).to eq('ninty nine trillion nine hundred ninty nine billion nine hundred ninty nine million nine hundred ninty nine thousand nine hundred ninty nine')
    expect(537487209485.to_w).to eq('five hundred thirty seven billion four hundred eighty seven million two hundred nine thousand four hundred eighty five')
    expect(745676971234717.to_w).to eq('seven hundred forty five trillion six hundred seventy six billion nine hundred seventy one million two hundred thirty four thousand seven hundred seventeen')
  end
end

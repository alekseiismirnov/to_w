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
end

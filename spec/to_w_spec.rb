require 'rspec'
require 'to_w'

describe 'Integer#to_w' do
  it 'converts 1 to one' do
    expect(1.to_w).to eq('one')
  end
end

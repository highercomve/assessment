require 'spec_helper'

describe ToWords do
  it 'has a version number' do
    expect(ToWords::VERSION).not_to be nil
  end

  it 'Default convertion must be english' do
    expect(1.to_words).to eq('one')
    expect(42.to_words).to eq('forty-two')
    expect(2001.to_words).to eq('two thousand and one')
    expect(1999.to_words).to eq('nineteen hundred and ninety-nine')
  end

  it 'Convert with spanish' do
    expect(1.to_words).to eq('uno')
    expect(42.to_words).to eq('cuarenta y dos')
    expect(2001.to_words).to eq('dos mil uno')
    expect(1999.to_words).to eq('mil novecientos noventa y nueve')
  end
end

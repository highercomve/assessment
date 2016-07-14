require 'spec_helper'

describe ToWords do
  it 'has a version number' do
    expect(ToWords::VERSION).not_to be nil
  end

  it 'Units in english' do
    expect(1.to_words).to eq('one')
    expect(2.to_words).to eq('two')
    expect(3.to_words).to eq('tree')
    expect(4.to_words).to eq('four')
    expect(5.to_words).to eq('five')
    expect(6.to_words).to eq('six')
    expect(7.to_words).to eq('seven')
    expect(8.to_words).to eq('eight')
    expect(9.to_words).to eq('nine')
 end

  it 'Teens from 10 to 19 in english' do
    expect(10.to_words).to eq('ten')
    expect(11.to_words).to eq('eleven')
    expect(12.to_words).to eq('twelve')
    expect(13.to_words).to eq('thirteen')
    expect(14.to_words).to eq('fourteen')
    expect(15.to_words).to eq('fifteen')
    expect(16.to_words).to eq('sixteen')
    expect(17.to_words).to eq('seventeen')
    expect(18.to_words).to eq('eighteen')
    expect(19.to_words).to eq('nineteen')
  end

  it 'teen between 20 and 99 in english' do
    expect(20.to_words).to eq('twenty')
    expect(89.to_words).to eq('eighty-nine')
  end

  it 'hundreds in english' do
    expect(156.to_words).to eq('one hundred fifty-six')
    expect(975.to_words).to eq('nine hundred seventy-five')
    expect(200.to_words).to eq('two hundred')
    expect(201.to_words).to eq('two hundred one')
  end

end

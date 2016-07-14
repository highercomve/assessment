require 'spec_helper'

describe ToWords do
  it 'has a version number' do
    expect(ToWords::VERSION).not_to be nil
  end

  it 'Units in english' do
    expect(1.to_words).to eq('one')
    expect(2.to_words).to eq('two')
    expect(3.to_words).to eq('three')
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

  it 'other big numbers in english' do
    expect(4356782.to_words).to eq('four million three hundred fifty-six thousand seven hundred eighty-two')
    expect(10001.to_words).to eq('ten thousand one')
    expect(961151312398.to_words).to eq('nine hundred sixty-one billion one hundred fifty-one million three hundred twelve thousand three hundred ninety-eight')
  end

  it 'Units in spanish' do
    expect(1.to_words(:es)).to eq('uno')
    expect(2.to_words(:es)).to eq('dos')
    expect(3.to_words(:es)).to eq('tres')
    expect(4.to_words(:es)).to eq('cuatro')
    expect(5.to_words(:es)).to eq('cinco')
    expect(6.to_words(:es)).to eq('seis')
    expect(7.to_words(:es)).to eq('siete')
    expect(8.to_words(:es)).to eq('ocho')
    expect(9.to_words(:es)).to eq('nueve')
 end

  it 'Teens from 10 to 19 in spanish' do
    expect(10.to_words(:es)).to eq('diez')
    expect(11.to_words(:es)).to eq('once')
    expect(12.to_words(:es)).to eq('doce')
    expect(13.to_words(:es)).to eq('trece')
    expect(15.to_words(:es)).to eq('quince')
    expect(16.to_words(:es)).to eq('dieciseis')
    expect(17.to_words(:es)).to eq('diecisiete')
    expect(18.to_words(:es)).to eq('dieciocho')
    expect(19.to_words(:es)).to eq('diecinueve')
  end

  it 'teen between 20 and 29 in spanish' do
    expect(20.to_words(:es)).to eq('veinte')
    expect(25.to_words(:es)).to eq('venticinco')
    expect(29.to_words(:es)).to eq('ventinueve')
  end

  it 'teen between 30 and 99 in spanish' do
    expect(30.to_words(:es)).to eq('treinta')
    expect(35.to_words(:es)).to eq('treinta y cinco')
    expect(50.to_words(:es)).to eq('cincuenta')
    expect(89.to_words(:es)).to eq('ochenta y nueve')
  end

  it 'hundreds in spanish' do
    expect(156.to_words(:es)).to eq('ciento cincuenta y seis')
    expect(975.to_words(:es)).to eq('novecientos setenta y cinco')
    expect(200.to_words(:es)).to eq('docientos')
    expect(201.to_words(:es)).to eq('docientos uno')
    expect(300.to_words(:es)).to eq('trecientos')
    expect(400.to_words(:es)).to eq('cuatrocientos')
    expect(500.to_words(:es)).to eq('quinientos')
    expect(600.to_words(:es)).to eq('seiscientos')
    expect(700.to_words(:es)).to eq('setecientos')
    expect(800.to_words(:es)).to eq('ochocientos')
    expect(900.to_words(:es)).to eq('novecientos')
  end

  it 'other big numbers in spanish' do
    expect(4_356_782.to_words(:es)).to eq('cuatro millones trecientos cincuenta y seis mil setecientos ochenta y dos')
    expect(10_001.to_words(:es)).to eq('diez mil uno')
    expect(201_250.to_words(:es)).to eq('docientos un mil docientos cincuenta')
  end



end

# frozen_string_literal: true

require 'rspec'

describe Gear do
  context 'ギアが52,コグが11の場合' do
    let(:gear) { Gear.new(52, 11) }


    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end
  end
  context 'ギアが30,コグが27の場合' do
    let(:gear) { Gear.new(30, 27) }


    it 'ギア比が1.1111111111111112であること' do
      expect(gear.ratio).to eq 1.1111111111111112
    end
  end

end

# frozen_string_literal: true

require 'rspec'

describe Gear do
  context 'ギアが30,コグが27の場合' do
    let(:gear) { described_class.new(30, 27) }

    it 'ギア比が1.1111111111111112であること' do
      expect(gear.ratio).to eq 1.1111111111111112
    end
  end

  context 'ギアが52,コグが11の場合' do
    let(:gear) { described_class.new(52, 11) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end
  end

  context 'ホイールがリム26、タイヤ1.5のとき' do
    let(:wheel) { Wheel.new(26, 1.5) }
    let(:gear) { described_class.new(52, 11, wheel) }

    it 'ギアインチが137.0909090909091であること' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end
end

# frozen_string_literal: true

require 'rspec'

describe GearWrapper do
  context 'Wrapperを通してギアを作成する場合' do
    let(:gear) { described_class.gear(chainring: 52, cog: 11, wheel: Wheel.new(rim: 26, tire: 1.5)) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end

    it 'ギアインチが137.0909090909091であること' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end

  context '引数の順番が変わっている場合' do
    let(:gear) { described_class.gear(wheel: Wheel.new(rim: 26, tire: 1.5), chainring: 52, cog: 11) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end

    it 'ギアインチが137.0909090909091であること' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end
end

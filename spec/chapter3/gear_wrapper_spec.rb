# frozen_string_literal: true

require 'rspec'

describe GearWrapper do
  context 'Wrapperを通してギアを作成する場合' do
    let(:wheel) { Wheel.new(rim: 26, tire: 1.5) }
    let(:gear) { described_class.gear(chainring: 52, cog: 11, wheel:) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end

    it 'ギアインチが137.0909090909091であること' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end

  context '引数の順番が変わっている場合' do
    let(:wheel) { Wheel.new(rim: 26, tire: 1.5) }
    let(:gear) { described_class.gear(wheel:, chainring: 52, cog: 11) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end

    it 'ギアインチが137.0909090909091であること' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end

  context 'テストダブルを用いる場合' do
    let(:wheel) { instance_double(Wheel, diameter: 10) }
    let(:gear) { described_class.gear(chainring: 52, cog: 11, wheel:) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end

    it 'ギアインチが47.27272727272727であるここと' do
      expect(gear.gear_inches).to eq 47.27272727272727
    end
  end
end

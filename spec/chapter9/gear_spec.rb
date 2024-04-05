# frozen_string_literal: true

require 'rspec'

describe ::Gear do
  let(:gear) do
    described_class.new(
      chainring: 52,
      cog: 11,
      rim: 26,
      tire: 1.5
    )
  end

  context 'gear_inchesがよばれたとき' do
    it 'ギアインチが正しいこと' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end
end

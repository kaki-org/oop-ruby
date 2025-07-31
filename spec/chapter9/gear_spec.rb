# frozen_string_literal: true

require 'rspec'

describe Gear do
  let(:observer) { instance_double(Observer) }
  let(:gear) do
    described_class.new(
      chainring: 52,
      cog: 11,
      rim: 26,
      tire: 1.5,
      observer:
    )
  end

  context 'gear_inchesがよばれたとき' do
    it 'ギアインチが正しいこと' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end

  context 'cogが変更されたとき' do
    before do
      allow(observer).to receive(:changed)
    end

    it 'Observerに通知されること' do
      gear.cog = 27
      expect(observer).to have_received(:changed).with(52, 27)
    end
  end

  context 'chainringが変更されたとき' do
    before do
      allow(observer).to receive(:changed)
    end

    it 'Observerに通知されること' do
      gear.chainring = 25
      expect(observer).to have_received(:changed).with(25, 11)
    end
  end
end

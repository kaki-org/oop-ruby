# frozen_string_literal: true

require 'rspec'

describe Parts do
  let(:chain) { Part.new(name: 'chain', description: '10-speed') }
  let(:road_tire) { Part.new(name: 'tire_size', description: '23') }
  let(:tape) { Part.new(name: 'tape_color', description: 'red') }
  let(:mountain_tire) { Part.new(name: 'tire_size', description: '2.1') }
  let(:rear_shock) { Part.new(name: 'rear_shock', description: 'Fox') }
  let(:front_shock) { Part.new(name: 'front_shock', description: 'Manitou', needs_spare: false) }

  context 'ロードバイクの場合' do
    let(:parts) { described_class.new([chain, road_tire, tape]) }
    let(:road_bike) { ::Chapter8::Bicycle.new(size: 'L', parts:) }

    it 'サイズがLであること' do
      expect(road_bike.size).to eq 'L'
    end

    it 'スペアが正しいこと' do
      expect(road_bike.spares).to eq(
        [
          chain,
          road_tire,
          tape
        ]
      )
    end
  end

  context 'マウンテンバイクの場合' do
    let(:parts) { described_class.new([chain, mountain_tire, front_shock, rear_shock]) }
    let(:mountain_bike) { ::Chapter8::Bicycle.new(size: 'M', parts:) }

    it 'サイズがMであること' do
      expect(mountain_bike.size).to eq 'M'
    end

    it 'スペアが正しいこと' do # rubocop:disable RSpec/ExampleLength
      expect(mountain_bike.spares).to eq(
        [
          chain,
          mountain_tire,
          rear_shock
        ]
      )
    end
  end
end

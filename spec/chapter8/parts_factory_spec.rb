# frozen_string_literal: true

require 'rspec'

describe PartsFactory do
  let(:road_config) { [%w[chain 10-speed], %w[tire_size 23], %w[tape_color red]] }
  let(:mountain_config) do
    [['chain', '10-speed'], ['tire_size', '2.1'], ['front_shock', 'Manitou'], ['rear_shock', 'Fox']]
  end
  let(:road_parts) { described_class.build(road_config) }
  let(:mountain_parts) { described_class.build(mountain_config) }

  context 'PartsFactory#build' do
    it 'ロードバイクのパーツが正しいこと' do
      expect(road_parts).to be_an_instance_of(Parts)
    end

    it 'マウンテンバイクのパーツが正しいこと' do
      expect(mountain_parts).to be_an_instance_of(Parts)
    end

    it 'ロードバイクのスペアが正しいこと' do
      expect(road_parts.spares.size).to eq 3
    end

    it 'マウンテンバイクのスペアが正しいこと' do
      expect(mountain_parts.spares.size).to eq 4
    end
  end
end

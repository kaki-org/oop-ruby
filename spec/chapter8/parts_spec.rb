# frozen_string_literal: true

require 'rspec'

describe Parts do
  context 'Lサイズのロードバイクの場合' do
    let(:parts) { RoadBikeParts.new(tape_color: 'red') }
    let(:road_bike) { ::Chapter8::Bicycle.new(size: 'L', parts:) }

    it 'サイズがLであること' do
      expect(road_bike.size).to eq 'L'
    end

    it 'スペアが正しいこと' do
      expect(road_bike.spares).to eq(
        tire_size: '23',
        chain: '10-speed',
        tape_color: 'red'
      )
    end
  end

  context 'マウンテンバイクの場合' do
    let(:parts) { MountainBikeParts.new(rear_shock: 'Fox') }
    let(:mountain_bike) { ::Chapter8::Bicycle.new(size: 'L', parts:) }

    it 'サイズがLであること' do
      expect(mountain_bike.size).to eq 'L'
    end

    it 'スペアが正しいこと' do # rubocop:disable RSpec/ExampleLength
      expect(mountain_bike.spares).to eq(
        tire_size: '2.1',
        chain: '10-speed',
        rear_shock: 'Fox',
        front_shock: 'Manitou'
      )
    end
  end
end

# frozen_string_literal: true

require 'rspec'
require 'shared_examples/bicycle_shared_example'

describe RoadBike do
  context '何も指定しない場合' do
    let(:road_bike) { described_class.new }

    it 'タイヤサイズが23であること' do
      expect(road_bike.spares[:tire_size]).to eq '23'
    end

    it 'チェーンが10-speedであること' do
      expect(road_bike.spares[:chain]).to eq '10-speed'
    end

    it 'テープカラーがnilであること' do
      expect(road_bike.tape_color).to be_nil
    end
  end

  context 'Mサイズでテープカラーが赤の場合' do
    let(:road_bike) { described_class.new(size: 'M', tape_color: 'red') }

    it 'タイヤサイズが23であること' do
      expect(road_bike.spares[:tire_size]).to eq '23'
    end

    it 'チェーンが10-speedであること' do
      expect(road_bike.spares[:chain]).to eq '10-speed'
    end

    it 'テープカラーが赤であること' do
      expect(road_bike.tape_color).to eq 'red'
    end

    it_behaves_like 'a bicycle'
  end
end

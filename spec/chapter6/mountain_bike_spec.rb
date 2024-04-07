# frozen_string_literal: true

require 'rspec'
require 'shared_examples/bicycle_shared_example'
require 'shared_examples/bicycle_subclass_example'

describe MountainBike do
  context 'Sサイズのマウンテンバイクの場合' do
    let(:mountain_bike) { described_class.new(size: 'S', front_shock: 'Manitou', rear_shock: 'Fox') }

    it 'サイズがSであること' do
      expect(mountain_bike.size).to eq 'S'
    end

    it 'スペアが正しいこと' do # rubocop:disable RSpec/ExampleLength
      expect(mountain_bike.spares).to eq(
        chain: '10-speed',
        tire_size: '2.1',
        rear_shock: 'Fox',
        front_shock: 'Manitou'
      )
    end

    it_behaves_like 'a bicycle'
    it_behaves_like 'a bicycle subclass'
  end
end

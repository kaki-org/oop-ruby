# frozen_string_literal: true

require 'rspec'

describe ::Chapter8::Bicycle do
  let(:recumbent_config) { [['chain', '9-speed'], ['tire_size', '28'], ['flag', 'tall and orange']] }
  let(:parts) { PartsFactory.build(recumbent_config) }
  let(:recumbent_bike) { described_class.new(size: 'L', parts:) }

  context 'リカンベントバイクの場合' do
    it 'Partsが正しいこと' do
      expect(parts).to be_an_instance_of(Parts)
    end

    it 'リカンベントバイクはバイクであること' do
      expect(recumbent_bike).to be_an_instance_of(described_class)
    end

    it 'リカンベントバイクのサイズが正しいこと' do
      expect(recumbent_bike.size).to eq 'L'
    end

    it 'リカンベントバイクのスペアが正しいこと' do # rubocop:disable RSpec/ExampleLength
      expect(recumbent_bike.spares).to eq(
        [
          OpenStruct.new(name: 'chain', description: '9-speed', needs_spare: true),
          OpenStruct.new(name: 'tire_size', description: '28', needs_spare: true),
          OpenStruct.new(name: 'flag', description: 'tall and orange', needs_spare: true)
        ]
      )
    end
  end
end

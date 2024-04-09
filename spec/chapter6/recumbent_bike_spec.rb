# frozen_string_literal: true

require 'rspec'
require 'shared_examples/bicycle_shared_example'
require 'shared_examples/bicycle_subclass_example'

describe ::Chapter6::RecumbentBike do
  context '何も指定しない場合' do
    xit '未実装である旨をエラー出力すること' do
      expect { described_class.new }.to raise_error(NotImplementedError, 'This RecumbentBike cannot respond to:')
    end
  end

  context 'flagを指定した場合' do
    let(:recumbent_bike) { described_class.new(flag: 'tall and orange') }

    it 'flagがtall and orangeであること' do
      expect(recumbent_bike.flag).to eq 'tall and orange'
    end

    it 'スペアが正しいこと' do
      expect(recumbent_bike.spares).to eq(
        chain: '9-speed',
        tire_size: '28',
        flag: 'tall and orange'
      )
    end

    it_behaves_like 'a bicycle'
    it_behaves_like 'a bicycle subclass'
  end
end

# frozen_string_literal: true

require 'rspec'

describe Bicycle do
  context 'タイヤサイズ0の自転車の場合' do
    let(:bike) { described_class.new(tire_size: 0) }

    it 'default_tire_size未実装である旨をエラー出力すること' do
      expect { bike.default_tire_size }.to raise_error(NotImplementedError, 'This Bicycle cannot respond to:')
    end
  end
end

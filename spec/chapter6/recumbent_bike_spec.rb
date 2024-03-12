# frozen_string_literal: true

require 'rspec'

describe RecumbentBike do
  context '何も指定しない場合' do
    it '未実装である旨をエラー出力すること' do
      expect { described_class.new }.to raise_error(NotImplementedError, 'This RecumbentBike cannot respond to:')
    end
  end
end

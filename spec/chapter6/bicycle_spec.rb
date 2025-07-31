# frozen_string_literal: true

require 'rspec'
require 'shared_examples/bicycle_shared_example'
require 'shared_examples/bicycle_subclass_example'

class StubbedBike < Chapter6::Bicycle
  def default_tire_size
    0
  end

  def local_spares
    { saddle: 'painful' }
  end
end

describe Chapter6::Bicycle do
  context 'タイヤサイズ0の自転車の場合' do
    let(:bike) { described_class.new(tire_size: 0) }

    it 'default_tire_size未実装である旨をエラー出力すること' do
      expect { bike.default_tire_size }.to raise_error(NotImplementedError, 'This Chapter6::Bicycle cannot respond to:')
    end
  end

  context '架空の自転車サブクラスが指定された場合' do
    subject { described_class.new(tire_size: 0) }

    let(:bike) { subject }
    let(:stubbed_bike) { StubbedBike.new }

    it 'サブクラスにdefault_tire_sizeの実装を強制していること' do
      expect do
        bike.default_tire_size
      end.to raise_error(NotImplementedError, 'This Chapter6::Bicycle cannot respond to:')
    end

    it_behaves_like 'a bicycle'

    it 'スペアにはlocal_sparesで返される値が含まれること' do
      expect(stubbed_bike.spares).to eq(
        saddle: 'painful',
        chain: '10-speed',
        tire_size: 0
      )
    end
  end

  describe StubbedBike do
    it_behaves_like 'a bicycle subclass'
  end
end

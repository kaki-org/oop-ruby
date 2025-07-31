# frozen_string_literal: true

require 'rspec'

describe Trip do
  shared_examples 'a preparer' do
    it 'responds to prepare_trip' do
      expect(object).to respond_to(:prepare_trip)
    end
  end

  # 受信メッセージの存在をテスト
  describe Mechanic do
    let(:object) { described_class.new }
    let(:trip) { object }

    it_behaves_like 'a preparer'
  end

  describe TripCoordinator do
    let(:object) { described_class.new }
    let(:trip) { object }

    it_behaves_like 'a preparer'
  end

  describe Driver do
    let(:object) { described_class.new }
    let(:trip) { object }

    it_behaves_like 'a preparer'
  end

  context 'prepare_tripが呼ばれたとき' do
    let(:preparer) { instance_double(Preparer) }
    let(:trip) { described_class.new }

    # 送信メッセージのテスト
    it 'Preparerにprepare_tripが呼ばれること' do
      allow(preparer).to receive(:prepare_trip)
      trip.prepare([preparer])
      expect(preparer).to have_received(:prepare_trip).with(trip)
    end
  end
end

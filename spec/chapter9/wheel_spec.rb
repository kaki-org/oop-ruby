# frozen_string_literal: true

require 'rspec'

describe ::Wheel do
  let(:wheel) { described_class.new(rim: 26, tire: 1.5) }

  context 'diameterがよばれたとき' do
    it 'そもそもdiameterがあること' do
      expect(wheel).to respond_to(:diameter)
    end

    it '直径が正しいこと' do
      expect(wheel.diameter).to eq 29.0
    end
  end
end

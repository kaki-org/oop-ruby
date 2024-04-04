# frozen_string_literal: true

require 'rspec'

describe ::Chapter2::Wheel do
  context 'ホイールのリムが26、タイアが1.5の場合' do
    let(:wheel) { described_class.new(rim: 26, tire: 1.5) }

    it '円周が91.106186954104であること' do
      expect(wheel.circumference).to eq 91.106186954104
    end
  end
end

# frozen_string_literal: true

require 'rspec'

describe Wheel do
  context 'ホイールのリムが26、タイアが1.5の場合' do
    let(:wheel) { Wheel.new(26, 1.5) }

    it '円周が91.106186954104であること' do
      expect(wheel.circumference).to eq 91.106186954104
    end
  end
end

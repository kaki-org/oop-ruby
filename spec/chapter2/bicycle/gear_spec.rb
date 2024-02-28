# frozen_string_literal: true

require 'rspec'
# require './gear'

describe Gear do
  let(:gear) { Gear.new(52, 11) }

  context 'ギアが52,コグが11の場合' do
    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end
  end
end

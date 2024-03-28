# frozen_string_literal: true

require 'rspec'
require 'date'

describe Bicycle do
  context 'schedulable?を呼び出したとき' do
    let(:starting) { Date.parse('2015/09/04') }
    let(:ending) { Date.parse('2015/09/10') }
    let(:bicycle) { described_class.new(tire_size: 27) }

    it 'スケジュールされているかどうかを返す' do
      expect(bicycle.schedulable?(starting, ending)).to be_truthy
    end
  end
end

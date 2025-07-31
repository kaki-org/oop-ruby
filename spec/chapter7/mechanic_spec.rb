# frozen_string_literal: true

require 'rspec'
require 'date'

describe Chapter7::Mechanic do
  context 'schedulable?を呼び出したとき' do
    let(:starting) { Date.parse('2015/09/04') }
    let(:ending) { Date.parse('2015/09/10') }
    let(:mechanic) { described_class.new }

    it 'スケジュールされているかどうかを返す' do
      expect(mechanic).to be_schedulable(starting, ending)
    end

    it 'lead_daysを返す' do
      expect(mechanic.lead_days).to eq(4)
    end
  end
end

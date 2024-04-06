# frozen_string_literal: true

require 'rspec'

describe ::Trip do
  shared_examples 'a preparer' do
    it 'responds to prepare_trip' do
      expect(object).to respond_to(:prepare_trip)
    end
  end

  describe ::Mechanic do
    let(:object) { described_class.new }
    let(:trip) { object }

    it_behaves_like 'a preparer'
  end

  describe ::TripCoordinator do
    let(:object) { described_class.new }
    let(:trip) { object }

    it_behaves_like 'a preparer'
  end

  describe ::Driver do
    let(:object) { described_class.new }
    let(:trip) { object }

    it_behaves_like 'a preparer'
  end
end

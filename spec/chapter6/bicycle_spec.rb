# frozen_string_literal: true

require 'rspec'

describe Bicycle do
  context '何も指定しない場合' do
    let(:bicycle) { described_class.new }

    it 'タイヤサイズが23であること' do
      expect(bicycle.spares[:tire_size]).to eq '23'
    end

    it 'チェーンが10-speedであること' do
      expect(bicycle.spares[:chain]).to eq '10-speed'
    end

    it 'テープカラーがnilであること' do
      expect(bicycle.tape_color).to be_nil
    end
  end

  context 'Mサイズでテープカラーが赤の場合' do
    let(:bicycle) { described_class.new(size: 'M', tape_color: 'red') }

    it 'タイヤサイズが23であること' do
      expect(bicycle.spares[:tire_size]).to eq '23'
    end

    it 'チェーンが10-speedであること' do
      expect(bicycle.spares[:chain]).to eq '10-speed'
    end

    it 'テープカラーが赤であること' do
      expect(bicycle.tape_color).to eq 'red'
    end
  end

  context 'マウンテンバイクで何も指定しない場合' do
    let(:bicycle) { described_class.new(style: :mountain) }

    it 'タイヤサイズが2.1であること' do
      expect(bicycle.spares[:tire_size]).to eq '2.1'
    end

    it 'チェーンが10-speedであること' do
      expect(bicycle.spares[:chain]).to eq '10-speed'
    end

    it 'リアショックがnilであること' do
      expect(bicycle.rear_shock).to be_nil
    end
  end

  context 'マウンテンバイクの詳細を指定した場合' do
    let(:bicycle) { described_class.new(style: :mountain, size: 'S', front_shock: 'Manitou', rear_shock: 'Fox') }

    it 'タイヤサイズが2.1であること' do
      expect(bicycle.spares[:tire_size]).to eq '2.1'
    end

    it 'チェーンが10-speedであること' do
      expect(bicycle.spares[:chain]).to eq '10-speed'
    end

    it 'フロントショックがManitouであること' do
      expect(bicycle.front_shock).to eq 'Manitou'
    end

    it 'リアショックがFoxであること' do
      expect(bicycle.rear_shock).to eq 'Fox'
    end
  end
end

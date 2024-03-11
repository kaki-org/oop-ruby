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

  context 'マウンテンバイクの場合' do
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
end

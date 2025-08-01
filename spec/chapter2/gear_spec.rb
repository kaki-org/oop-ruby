# frozen_string_literal: true

require 'rspec'

describe Chapter2::Gear do
  context 'ギアとコグに何も指定しない場合' do
    let(:gear) { described_class.new }

    it 'ギア比が2.2222222222222223であること' do
      expect(gear.ratio).to eq 2.2222222222222223
    end

    it 'オプション真偽値がtrueであること' do
      expect(gear.opt_bool).to be_truthy
    end
  end

  context 'オプション真偽値にfalseを指定した場合' do
    let(:gear) { described_class.new(opt_bool: false) }

    it 'オプション真偽値がfalseであること' do
      expect(gear.opt_bool).to be_falsey
    end
  end

  context 'ギアが30,コグが27の場合' do
    let(:gear) { described_class.new(chainring: 30, cog: 27) }

    it 'ギア比が1.1111111111111112であること' do
      expect(gear.ratio).to eq 1.1111111111111112
    end
  end

  context 'ギアが52,コグが11の場合' do
    let(:gear) { described_class.new(chainring: 52, cog: 11) }

    it 'ギア比が4.7272727272727275であること' do
      expect(gear.ratio).to eq 4.7272727272727275
    end
  end

  context 'ホイールがリム26、タイヤ1.5のとき' do
    let(:wheel) { Chapter2::Wheel.new(rim: 26, tire: 1.5) }
    let(:gear) { described_class.new(chainring: 52, cog: 11, wheel:) }

    it 'ギアインチが137.0909090909091であること' do
      expect(gear.gear_inches).to eq 137.0909090909091
    end
  end
end

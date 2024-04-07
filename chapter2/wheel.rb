# frozen_string_literal: true

module Chapter2
  # Wheel クラスを定義
  class Wheel
    attr_reader :rim, :tire

    def initialize(rim:, tire:)
      @rim = rim
      @tire = tire
    end

    def diameter
      # 車輪の直径 = リムの直径 ＋ タイヤの厚みの2倍
      #
      # タイヤはリムの周りを囲むので、直径を計算するためには2倍する
      rim + (tire * 2)
    end

    def circumference
      # 車輪の円周 = 直径 * π
      diameter * Math::PI
    end
  end
end

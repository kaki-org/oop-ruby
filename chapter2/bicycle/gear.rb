# frozen_string_literal: true

# Gearクラスを定義
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # ギアインチ = 車輪の直径 ✕ ギア比
    diameter * ratio
  end

  def diameter
    # 車輪の直径 = リムの直径 ＋ タイヤの厚みの2倍
    #
    # タイヤはリムの周りを囲むので、直径を計算するためには2倍する
    rim + (tire * 2)
  end
end

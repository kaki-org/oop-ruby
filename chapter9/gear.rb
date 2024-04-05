# frozen_string_literal: true

# Gearクラスを定義
class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring: nil, cog: nil, rim: nil, tire: nil)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def gear_inches
    # ギアインチ = ギア比 ✕ 車輪の直径
    ratio * Wheel.new(rim:, tire:).diameter
  end

  def ratio
    chainring / cog.to_f
  end
end

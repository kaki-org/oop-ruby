# frozen_string_literal: true

# Gearクラスを定義
class Gear
  attr_reader :chainring, :cog, :wheel, :opt_bool

  def initialize(chainring: 40, cog: 18, wheel: nil, opt_bool: true)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
    @opt_bool = opt_bool
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    # ギアインチ = 車輪の直径 ✕ ギア比
    diameter * ratio
  end

  private

  def diameter
    wheel.diameter
  end
end

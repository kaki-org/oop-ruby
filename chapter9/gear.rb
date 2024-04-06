# frozen_string_literal: true

# Gearクラスを定義
class Gear
  attr_reader :chainring, :cog, :rim, :tire, :observer

  def initialize(chainring: nil, cog: nil, rim: nil, tire: nil, observer: nil)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
    @observer = observer
  end

  def gear_inches
    # ギアインチ = ギア比 ✕ 車輪の直径
    ratio * Wheel.new(rim:, tire:).diameter
  end

  def ratio
    chainring / cog.to_f
  end

  def cog=(cog)
    @cog = cog
    changed
  end

  def chainring=(chainring)
    @chainring = chainring
    changed
  end

  def changed
    observer.changed(chainring, cog)
  end
end

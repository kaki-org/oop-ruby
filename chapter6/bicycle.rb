# frozen_string_literal: true

# 自転車
class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(size: nil, chain: nil, tire_size: nil)
    @size = size
    @chain = chain
    @tire_size = tire_size
  end

  def spares
    {
      chain: '10-speed',
      tire_size: '23'
    }
  end
end

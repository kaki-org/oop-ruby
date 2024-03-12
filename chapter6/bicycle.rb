# frozen_string_literal: true

# 自転車
class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(size: nil, chain: '10-speed', tire_size: nil)
    @size = size
    @chain = chain
    @tire_size = tire_size || default_tire_size
  end

  def spares
    {
      chain: '10-speed',
      tire_size: '23'
    }
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end

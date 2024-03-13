# frozen_string_literal: true

# 自転車
class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(size: nil, chain: nil, tire_size: '23')
    @size = size
    @chain = chain || default_chain
    @tire_size = tire_size || default_tire_size
  end

  def spares
    {
      chain:,
      tire_size:
    }
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end

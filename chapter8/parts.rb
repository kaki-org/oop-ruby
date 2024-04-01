# frozen_string_literal: true

# 自転車のパーツ
class Parts
  attr_reader :chain, :tire_size

  def initialize(chain: nil, tire_size: nil, **args)
    @chain = chain || default_chain
    @tire_size = tire_size || default_tire_size

    post_initialize(args)
  end

  def spares
    { tire_size:, chain: }.merge(local_spares)
  end

  # サブクラスでオーバーライドされる
  def post_initialize(_args)
    nil
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end

# frozen_string_literal: true

# リカンベントバイク
class RecumbentBike < Bicycle
  attr_reader :flag

  def initialize(size: nil, chain: '9-speed', flag: nil)
    @flag = flag # superを忘れる
    # super(size:, chain:)
  end

  def spares
    super.merge(flag:)
  end

  def default_tire_size
    '28'
  end
end

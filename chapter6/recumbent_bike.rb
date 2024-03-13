# frozen_string_literal: true

# リカンベントバイク
class RecumbentBike < Bicycle
  attr_reader :flag

  def initialize(size: nil, chain: '9-speed', tire_size: nil, flag: nil)
    @flag = flag # superを忘れると途端にsizeやchainがnilになるので注意
    super(size:, chain:, tire_size:)
  end

  def spares
    super.merge(flag:)
  end

  def default_tire_size
    '28'
  end
end

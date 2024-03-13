# frozen_string_literal: true

# マウンテンバイク
class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def initialize(size: nil, chain: nil, front_shock: nil, rear_shock: nil)
    @front_shock = front_shock
    @rear_shock = rear_shock
    super(size:, chain:)
  end

  # すべての自転車はデフォルト値として
  # 同じタイヤサイズとチェーンサイズを持つ
  def spares
    super.merge(rear_shock:, front_shock:)
  end

  def default_tire_size
    '2.1'
  end
end

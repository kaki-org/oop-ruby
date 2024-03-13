# frozen_string_literal: true

# ロードバイク
class RoadBike < Bicycle
  attr_reader :tape_color

  def initialize(size: nil, chain: nil, tire_size: nil, tape_color: nil)
    @tape_color = tape_color
    super(size:, chain:, tire_size:)
  end

  # すべての自転車はデフォルト値として
  # 同じタイヤサイズとチェーンサイズを持つ
  # ロードバイクはデフォルト値としてテープカラーも持つ
  def spares
    super.merge(tape_color:)
  end

  def default_tire_size
    '23'
  end
end

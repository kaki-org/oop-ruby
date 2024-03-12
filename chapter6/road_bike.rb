# frozen_string_literal: true

# ロードバイク
class RoadBike < Bicycle
  attr_reader :size, :tape_color

  def initialize(size: nil, tape_color: nil)
    @tape_color = tape_color
    super(size:)
  end

  # すべての自転車はデフォルト値として
  # 同じタイヤサイズとチェーンサイズを持つ
  def spares
    super.merge(tape_color:)
  end
end

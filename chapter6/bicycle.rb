# frozen_string_literal: true

# 自転車
class Bicycle
  attr_reader :size, :tape_color

  def initialize(size: nil, tape_color: nil)
    @size = size
    @tape_color = tape_color
  end

  # すべての自転車はデフォルト値として
  # 同じタイヤサイズとチェーンサイズを持つ
  def spares
    {
      chain: '10-speed',
      tire_size: '23',
      tape_color:
    }
  end
end

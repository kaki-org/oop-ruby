# frozen_string_literal: true

# 自転車
class Bicycle
  attr_reader :style, :size, :tape_color, :front_shock, :rear_shock

  def initialize(style: :road, size: nil, tape_color: nil, front_shock: nil, rear_shock: nil)
    @style = style
    @size = size
    @tape_color = tape_color
    @front_shock = front_shock
    @rear_shock = rear_shock
  end

  # "style"の確認は危険な道へ進む一歩
  def spares
    if style == :road
      {
        chain: '10-speed',
        tire_size: '23', # milimeters
        tape_color:
      }
    else # styleがmountainの場合
      {
        chain: '10-speed',
        tire_size: '2.1', # inches
        rear_shock:
      }
    end
  end
end

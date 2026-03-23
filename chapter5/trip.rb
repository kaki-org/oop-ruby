# frozen_string_literal: true

# 旅行の準備はよりかんたんになる
class Trip
  attr_reader :bicycles, :customers, :vehicle

  # この 'mechanic' 引数はどんなクラスのものでも良い
  def prepare(preparers)
    preparers.each { |preparer| preparer.prepare_trip(self) }
  end
end

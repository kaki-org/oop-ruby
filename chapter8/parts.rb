# frozen_string_literal: true

# 自転車のパーツ
class Parts
  attr_reader :parts

  def initialize(parts)
    @parts = parts
  end

  def spares
    parts.select(&:needs_spare)
  end
end

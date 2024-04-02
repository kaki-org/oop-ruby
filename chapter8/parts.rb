# frozen_string_literal: true

# 自転車のパーツ
class Parts < Array
  attr_reader :parts

  def initialize(parts)
    super(parts)
    @parts = parts
  end

  def spares
    parts.select(&:needs_spare)
  end
end

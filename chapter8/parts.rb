# frozen_string_literal: true

require 'forwardable'

# 自転車のパーツ
class Parts
  extend Forwardable

  def_delegators :@parts, :size, :each
  include Enumerable

  def initialize(parts)
    @parts = parts
  end

  def spares
    select(&:needs_spare)
  end
end

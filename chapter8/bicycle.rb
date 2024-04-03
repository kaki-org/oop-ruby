# frozen_string_literal: true

module Chapter8
  # 自転車
  class Bicycle
    attr_reader :size, :parts

    def initialize(size: nil, parts: nil)
      @size = size
      @parts = parts
    end

    def spares
      parts.spares
    end
  end
end

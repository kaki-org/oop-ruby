# frozen_string_literal: true

module Chapter6
  # ロードバイク
  class RoadBike < Bicycle
    attr_reader :tape_color

    def post_initialize(args)
      @tape_color = args[:tape_color]
    end

    def local_spares
      { tape_color: }
    end

    def default_tire_size
      '23'
    end
  end
end

# frozen_string_literal: true

require_relative 'schedulable'

module Chapter7
  # 自動車
  class Vehicle
    include ::Chapter7::Schedulable

    attr_reader :size, :chain, :tire_size

    # Scheduleを注入し、初期値を設定する
    def initialize(size: nil, tire_size: nil, **args)
      @size = size
      @tire_size = tire_size || default_tire_size

      post_initialize(args)
    end

    def post_initialize(_args)
      nil
    end

    # bicycleがスケジュール可能となるまでの準備日数を返す
    def lead_days
      3
    end

    def spares
      {
        tire_size:
      }.merge(local_spares)
    end

    def local_spares
      {}
    end

    def default_tire_size
      raise NotImplementedError, "This #{self.class} cannot respond to:"
    end
  end
end

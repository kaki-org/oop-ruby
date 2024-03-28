# frozen_string_literal: true

# 自転車
class Bicycle
  attr_reader :schedule, :size, :chain, :tire_size

  # Scheduleを注入し、初期値を設定する
  def initialize(size: nil, chain: nil, tire_size: nil, **args)
    @size = size
    @chain = chain || default_chain
    @tire_size = tire_size || default_tire_size
    @schedule = args[:schedule] || Schedule.new

    post_initialize(args)
  end

  def post_initialize(_args)
    nil
  end

  # 与えられた期間(現在はBicycleに固有)の間、bicycleが利用可能であればtrueを返す
  def schedulable?(start_date, end_date)
    !scheduled?(start_date - lead_days, end_date)
  end

  # scheduleの答えを返す
  def scheduled?(start_date, end_date)
    schedule.scheduled?(self, start_date, end_date)
  end

  # bicycleがスケジュール可能となるまでの準備日数を返す
  def lead_days
    1
  end

  def spares
    {
      chain:,
      tire_size:
    }.merge(local_spares)
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end
end

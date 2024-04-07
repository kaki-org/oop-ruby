# frozen_string_literal: true

module Chapter7
  # スケジュール可能なものを定義するモジュール
  module Schedulable
    attr_writer :schedule

    def schedule
      @schedule ||= ::Chapter7::Schedule.new
    end

    # 与えられた期間の間、bicycleが利用可能であればtrueを返す
    def schedulable?(start_date, end_date)
      !scheduled?(start_date - lead_days, end_date)
    end

    # scheduleの答えを返す
    def scheduled?(start_date, end_date)
      schedule.scheduled?(self, start_date, end_date)
    end

    # 必要に応じてインクルードする側で置き換える
    def lead_days
      0
    end
  end
end

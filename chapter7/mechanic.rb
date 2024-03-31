# frozen_string_literal: true

require_relative './schedulable'

# 整備士
class Mechanic
  include ::Schedulable

  # Scheduleを注入し、初期値を設定する
  def initialize(**args)
    post_initialize(args)
  end

  def post_initialize(_args)
    nil
  end

  # bicycleがスケジュール可能となるまでの準備日数を返す
  def lead_days
    4
  end
end

# frozen_string_literal: true

module Chapter7
  # スケジュール
  class Schedule
    def scheduled?(schedulable, start_date, end_date)
      puts "This #{schedulable.class} is not scheduled\n" \
           " between #{start_date} and #{end_date}"
    end
  end
end

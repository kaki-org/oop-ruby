# frozen_string_literal: true

# 整備士
class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each do |bicycle|
      prepare_bicycle(bicycle)
    end
  end
end

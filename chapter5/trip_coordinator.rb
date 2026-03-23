# frozen_string_literal: true

# すべての準備者(Preparer)は'prepare_trip'に応答するダック
class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end

  def buy_food(customers)
    # ...
  end
end

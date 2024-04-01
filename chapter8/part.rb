# frozen_string_literal: true

# 自転車の部品
class Part
  attr_reader :name, :description, :needs_spare

  def initialize(name: nil, description: nil, needs_spare: true)
    @name = name
    @description = description
    @needs_spare = needs_spare
  end
end

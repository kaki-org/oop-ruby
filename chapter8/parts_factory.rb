# frozen_string_literal: true

require 'ostruct'

# PartsFactory.buildメソッドを追加
module PartsFactory
  def self.build(config, parts_class = Parts)
    parts_class.new(
      config.collect do |part_config|
        create_part(part_config)
      end
    )
  end

  def self.create_part(part_config)
    OpenStruct.new(
      name: part_config[0],
      description: part_config[1],
      needs_spare: part_config.fetch(2, true)
    )
  end
end

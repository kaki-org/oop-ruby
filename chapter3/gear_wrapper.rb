# frozen_string_literal: true

# 外部のインターフェースをラップし、自身も変更から守る(Factory Methodパターン)
module GearWrapper
  def self.gear(args)
    SomeFramework::Gear.new(args[:chainring], args[:cog], args[:wheel])
  end
end

require 'test_helper'

class CarTest < ActiveSupport::TestCase
  test "Car name must not be empty" do
    car = Car.new
    assert car.invalid?
    assert car.errors[:name].any?
  end
end

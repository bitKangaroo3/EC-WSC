require 'test_helper'

class BasketDecoratorTest < ActiveSupport::TestCase
  def setup
    @basket = Basket.new.extend BasketDecorator
  end

  # test "the truth" do
  #   assert true
  # end
end

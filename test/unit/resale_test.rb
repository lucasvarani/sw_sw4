require 'test_helper'

class ResaleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Resale.new.valid?
  end
end

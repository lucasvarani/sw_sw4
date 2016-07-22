require 'test_helper'

class ProductInformationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ProductInformation.new.valid?
  end
end

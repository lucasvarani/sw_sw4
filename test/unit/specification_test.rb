require 'test_helper'

class SpecificationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Specification.new.valid?
  end
end

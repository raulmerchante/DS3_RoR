require "test_helper"

class DesechoTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "crear desecho" do
   desecho = Desecho.new
   assert_not desecho.save, "Se ha creado un desecho"
  end

end

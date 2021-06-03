require "test_helper"

class DiarioTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test ".word_count returns the correct number of words" do 
    diario = Diario.new(apellidos_paciente: "Garcia de Dios") 
    assert_equal 3, diario.apellidos_paciente.word_count
  end
end

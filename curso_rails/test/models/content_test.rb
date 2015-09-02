require 'test_helper'

class ContentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Must have title mayor a 5" do
    contenido = Content.create({title: "w"})
    assert_not contenido.valid?
    contenido2 = Content.create({title: "mas de 5 caracteres"})
    contenido2.valid?
    assert contenido2.errors.messages[:title].size, 0
  end

end

require "minitest/autorun"
require 'rcto'

class User < Rcto::Model
  schema 'users' do
    field :username, :primary_key
    field :password, :string
    field :created_at, :date
    field :updated_at, :date
  end
end

class Cart < Rcto::Model
  schema 'carts' do
    field :id, :primary_key
    field :table_number, :string
  end
end

class TestMeme < Minitest::Test
  # def setup
  #   @meme = Meme.new
  # end

  # def test_that_kitty_can_eat
  #   assert_equal "OHAI!", @meme.i_can_has_cheezburger?
  # end
  #
  # def test_that_it_will_not_blend
  #   refute_match /^no/i, @meme.will_it_blend?
  # end

  def test_has_username_field
    assert_includes User.fields.map(&:name), 'username'
  end

  def test_has_no_table_field
    refute User.fields.map(&:name).include?('table_number')
  end

  def test_cart_table_field
    assert_includes Cart.fields.map(&:name), 'table_number'
  end
end

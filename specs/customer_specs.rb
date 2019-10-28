require('minitest/autorun')
require('minitest/rg')
require_relative('../customer.rb')

class TestCustomer < Minitest::Test

  def setup
    @customer1 = Customer.new('Ed', '40', 50, 'New York, New York')
  end


  def test_has_name
    assert_equal('Ed', @customer1.name)
  end
  
  def test_has_age
    assert_equal('40', @customer1.age)
  end

  def test_has_wallet
    assert_equal(50, @customer1.wallet)
  end

  def test_has_favourite_song
    assert_equal('New York, New York', @customer1.favourite_song)
  end


end

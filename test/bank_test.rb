require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'

class BankTest < Minitest::Test
  def test_it_exists
    bank = Bank.new("Wells Fargo", "1050 17th St, Denver, CO 80265")
    asert_instance_of Bank, bank
  end

  def test_it_has_attributes
    bank = Bank.new("Wells Fargo", "1050 17th St, Denver, CO 80265")
    assert_equal "Wells Fargo", bank.type
    assert_equal "1050 17th St, Denver, CO 80265", bank.address
  end

  def test_it_can_get_the_zip
    bank = Bank.new("Wells Fargo", "1050 17th St, Denver, CO 80265")
    assert_equal "80265", bank.zip
  end
end

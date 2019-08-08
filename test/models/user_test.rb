require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup 
    @user = User.new(username: "Pedro", email: "example@example.com", password: "password")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should exist" do
    @user.username = "    "
    assert_not @user.valid?
  end

  test "password should exist" do
    @user.password = "    "
    assert_not @user.valid?
  end

  test "email should exist" do
    @user.email = "    "
    assert_not @user.valid?
  end

end

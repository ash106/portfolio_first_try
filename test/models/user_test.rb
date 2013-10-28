require "test_helper"

class UserTest < ActiveSupport::TestCase

  before do
    @user = build(:user)
  end

  test "has an email" do
    @user.email = nil
    refute @user.valid?, 'User is valid without an email'
  end

  test "has a valid email" do
    @user.email = 'alex@ba'
    assert @user.invalid?, 'Email address should be recognized as invalid'
  end

  test "has a password" do
    @user.password = nil
    assert @user.invalid?, 'Nil password should be invalid'
  end

  test 'password lengh is no more than 128 characters' do
    @user.password = ('a' * 129).to_s
    assert @user.invalid?, '129 char password should be invalid'
  end

  test 'password length is no less than 6 characters' do
    @user.password = '12345'
    assert @user.invalid?, 'MAKE THAT PASSWORD LONGER BIATCH'
  end

  test 'user not created without a first name' do
    @user.first_name = nil
    refute @user.valid?, 'User created without first name'
  end

  test 'user not created without a last name' do
    @user.last_name = nil
    refute @user.valid?, 'User created without last name'
  end

  test 'displays full name as first + last name' do
    assert_equal @user.full_name, @user.first_name + ' ' + @user.last_name
  end
end
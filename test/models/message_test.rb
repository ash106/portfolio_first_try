require "test_helper"

class MessageTest < ActiveSupport::TestCase

  before do
    @message = build(:message)
  end

  test 'validity of message' do
    assert @message.valid?
    assert_match Devise::email_regexp, @message.email.to_s
  end

  test "rejects a message without a body" do
    @message.body = nil
    assert @message.invalid?
  end

  test "rejects a message without a subject" do
    @message.subject = nil
    assert @message.invalid?
  end
  
  test "rejects a message without a name" do
    @message.name = nil
    assert @message.invalid?
  end  

  test "rejects a message without a email" do
    @message.email = nil
    assert @message.invalid?
  end

  test "checks that email has a valid format" do
    @message.email = 'invalid@wutang,com'
    assert @message.invalid?, 'invalid email should be caught'
    refute_match Devise::email_regexp, @message.email.to_s
  end
end

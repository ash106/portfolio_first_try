require "test_helper"

class ContactMailerTest < ActionMailer::TestCase
  # include this so that assert_template is defined
  include ActionController::TemplateAssertions
end

class ContactMailerTest < ActionMailer::TestCase

  before do
    @message = build(:message)
    @email = ContactMailer.contact_us(@message).deliver
  end

  # test "shows email layout" do
  #   assert_template layout: 'layouts/email'
  # end

  test "delivered to support@devpointlabs.com" do
    assert_equal "support@devpointlabs.com", @email.to.pop
  end

  test "delivered from the sender's email" do
    assert_equal @message.email, @email.from.pop
  end

  test "delivered with an appropriate subject" do
    assert_equal "[Portfolio] #{@message.subject}", @email.subject
  end

  def validate_request!
    # this method is added so that assert_template will work
    #
    # overrides method defined in ActionDispatch::Assertions::ResponseAssertions
    # even if you include that module to work around NoMethodError, it won't work b/c @response isn't
    # an ActionDispatch::Request object
  end
end
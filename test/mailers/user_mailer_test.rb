require "test_helper"

class UserMailerTest < ActionMailer::TestCase

  include ActionController::TemplateAssertions

  before do
    @user = build(:user)
    @email = UserMailer.welcome(@user).deliver
  end

  # test "shows email layout" do
  #   assert_template layout: "layouts/email"
  # end

  test "delivered to correct user" do
    assert_equal @user.email, @email.to.pop
  end

  test "delivered from noreply@devpointlabs.com" do
    assert_equal "noreply@devpointlabs.com", @email.from.pop
  end

  test "delivered with the correct subject" do
    assert_equal "Welcome to Alex's Portfolio!", @email.subject
  end

  private
  
  def validate_request!
    # this method is added so that assert_template will work
    #
    # overrides method defined in ActionDispatch::Assertions::ResponseAssertions
    # even if you include that module to work around NoMethodError, it won't work b/c @response isn't
    # an ActionDispatch::Request object
  end

end
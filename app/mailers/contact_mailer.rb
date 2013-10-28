class ContactMailer < ActionMailer::Base
  layout 'email'

  default from: "noreply@devpointlabs.com"

  def contact_us(message)
    @message = message
    mail(to: "support@devpointlabs.com", from: @message.email, subject: "[Portfolio] #{@message.subject}")
  end
end

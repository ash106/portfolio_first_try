class ContactMailer < ActionMailer::Base
  layout 'email'

  default from: "noreply@wheatboxstudios.com"

  def contact_us(message)
    @message = message
    mail(to: "support@wheatboxstudios.com", from: @message.email, subject: "[Portfolio] #{@message.subject}")
  end
end

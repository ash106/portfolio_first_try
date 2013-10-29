class UserMailer < ActionMailer::Base
  layout 'email'

  default from: "noreply@wheatboxstudios.com"
  #Call email using: UserMailer.welcome(user).deliver
  def welcome(user)
    @user = user
    mail(to: @user.email, subject: "Welcome to Alex's Portfolio!")
  end
end

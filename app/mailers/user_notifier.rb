class UserNotifier < ActionMailer::Base

  default from: "TallyMyGear <webmaster@TallyMyGear.com>"

  def reset_password(user)
    @user = user
    mail to: @user.email, subject: "[TallyMyGear] Reset your credentials"
  end


  def password_was_reset(user)
  end


end
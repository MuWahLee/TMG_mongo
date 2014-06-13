class UserMailer < ActionMailer::Base

	LINK_TO_RESET = "[TallyMyGear] Reset your credentials"
  WAS_RESET     = "[TallyMyGear] Your password has been reset!"
  
  default from: "TallyMyGear@hotmail.com"

	def welcome_email(user)
    @user = user
    @url  = 'http://TallyMyGear.com/login'
    mail(to: @user.email, subject: 'Welcome to Tally My Gear')
	end

  def reset_password(user)
    @user = user
    mail to: @user.email, subject: LINK_TO_RESET
  end


  def password_was_reset(user)
    @user = user
    mail to: @user.email, subject: WAS_RESET
  end

end

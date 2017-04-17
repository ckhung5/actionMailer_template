class UserMailer < ApplicationMailer

# This is to send email to the customer
  def subcribe_email(user)

      @user = user

      mail(to: @user[:email],subject: 'XXX')
  end

# This is to send a copy of the details to owner email
  def resent_email(user)

      @user = user

      mail(to: ENV['GMAIL_KEY'], subject: 'XXXX')
  end
end

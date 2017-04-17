class MailerController < ActionController::Base

# creating deliver function
  def deliver
    begin
    UserMailer.resent_email(params[:user]).deliver_later
    UserMailer.subcribe_email(params[:user]).deliver_later
    flash[:notice] = "success"
    rescue Net::SMTPAuthenticationError, Net::SMTPServerBusy, Net::SMTPSyntaxError, Net::SMTPFatalError, Net::SMTPUnknownError => e
        flash[:notice] = "error"
    end
    redirect_to root_path

  end

end

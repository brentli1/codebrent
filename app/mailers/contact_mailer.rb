class ContactMailer < ApplicationMailer
  default from: 'do-not-reply@codebrent.com'

  def contact_email(message)
    @message = message

    mail(to: ENV['SENDGRID_EMAIL_ADDRESS'], subject: 'An Email from codebrent.com!')
  end
end

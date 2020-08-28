class ApplicationMailer < ActionMailer::Base

  default from: 'from@example.com'
  layout 'mailer'


  def sendmail_confirm
    @answer = "Hi"

    mail to: "from@sample.com", subject: "ActionMailer test"
  end


end

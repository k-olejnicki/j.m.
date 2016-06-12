class MessageMailer < ApplicationMailer

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "Justyna Miazga <justynamiazga1992@gmail.com>"

  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name} #{message.tel} #{message.email}"
  end

end

class MessageMailer < ApplicationMailer

  default from: "Formularz Kontaktowy Strony"
  default to: "Justyna Miazga <justynamiazga1992@gmail.com>"

  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name} [#{message.tel}] <#{message.email}>"
  end

end

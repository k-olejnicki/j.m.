class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to contact_path, notice: "Twoja wiadomość została wysłana."
    else
      flash[:alert] = "Błąd przy wysyłaniu wiadomości."
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content, :tel)
  end

end

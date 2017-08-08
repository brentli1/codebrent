class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.save
      ContactMailer.contact_email(@message).deliver_now
      flash[:success] = "I've got your message.  Thanks!"
      redirect_to contact_path
    else
      render 'new'
    end
  end

  private
  def message_params
    params.require(:message).permit(:name, :email, :body)
  end
end

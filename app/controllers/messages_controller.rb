class MessagesController < ApplicationController

    def new
        @data = Message.new
    end

    def create
        
        @message = Message.new(params[:message])
        binding.pry
        if @message.valid?
            # TODO send message here
            flash[:notice] = "Message sent! Thank you for contacting us."
            redirect_to root_url
        else
            render :action => 'new'
        end
    end
end
  
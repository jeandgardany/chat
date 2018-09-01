class ChatsController < ApplicationController
  def show
  	#@messages = Message.all
  	@messages = Message.page(params[:page]).per(10).order(id: :desc)
  end
end

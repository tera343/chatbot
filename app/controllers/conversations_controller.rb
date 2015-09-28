require './config/ruby_code/akari.rb'
class ConversationsController < ApplicationController
  @@limit = Log.find(:last, :select => "id")
  @@input = ""
  def index
  	@logs = Log.where("id >= ?",@@limit)

  	@log = Log.new
  end

  def new
  end

  def destroy
    @@limit = Log.find(:last, :select => "id")
    p @@limit
    #Log.destroy_all
    redirect_to "/conversations/index"
  end

  def create
  	@log = Log.new
  	@log.talk = params[:log][:talk]
  	@@input = params[:log][:talk]

  	@log.username = "tera" #params[:log][:username]
  	@log.time = Time.now
  	@log.save
  	redirect_to '/conversations/reply'
  end


  def reply
	#人工無脳の返信を書く
    @log = Log.new
  	@log.talk = chatbot(@@input)
    
  	@log.username = "akari" #params[:log][:username]
  	@log.time = Time.now
  	@log.save
  	redirect_to '/conversations/index'
  end

end

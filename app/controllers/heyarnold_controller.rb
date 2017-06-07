class HeyarnoldController < ApplicationController

  def index
    @hey_arnold_stuffs = Unirest.get("localhost:3000/api/v2/hey_arnold_stuffs.json").body
  end 

  def new
  end 

def create
    hey_arnold = Unirest.post(
                            "localhost:3000/api/v2/hey_arnold_stuffs.json?character=#{params[character]}$quote=#{params[:quote]}", 
                            headers: {
                                      "Accept" => "application/json"
                                     },
                            ).body
    redirect_to "/hey_arnold/#{hey_arnold_stuff["id"]}"
  end 

  def show
    @hey_arnold_stuff = Unirest.get("localhost:3000/api/v2/hey_arnold_stuffs/#{params[:id]}.json").body
  end 

end

require 'multipart/post'
require 'httparty'

class Twaudio
  include HTTParty
  
  base_uri 'twaud.io'
  
  def initialize(username='', password='')
    @username = username
    @password = password
  end
  
  def sound(id)
    self.class.get("/api/v1/#{id}.json")
  end
  
  def user(login)
    self.class.get("/api/v1/users/#{login}.json")
  end
  
  def upload(message, file, tweet_this=false)
    params = {
      'sound[message]' => message,
      'sound[file]' => file,
      'username' => @username,
      'password' => @password
    }
    
    params[:tweet_this] = 'true' if tweet_this
    
    self.class.multipart_post("/api/v1/upload.json", :query => params)
  end
  
  def self.multipart_post(path, options={})
    multipart_post = Multipart::Post.new(options.delete(:query))
    
    options[:body] = multipart_post.body
    options[:headers] = (options[:headers] || {}).merge(multipart_post.headers) 
    
    post path, options
  end
end
class Application
  
  def call(env)
    resp = Rack::Response.new
    morning_t= Time.new(2019,04,23,9,30)
    noon_t= Time.new(2019,04,23,14,30)
    
    if morning_t === Time.now
      resp.write "Morning"
    else
      resp.write "Afternoon"
      resp.write "Morning"
    end
    
    resp.finish
  end
end
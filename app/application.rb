
class Application

  def call(env)
    resp = Rack::Response.new
    now = Time.now
    resp.write "#{now}\n"
    if now.hour >=12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end

end

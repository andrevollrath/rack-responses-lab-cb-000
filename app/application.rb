class Application

  def call(env)
    resp = Rack::Response.new
    response = Time.now.hour < 12 ? "Good Morning!" : "Good Afternoon!"
    resp.write response
    resp.finish
  end

end
class Application
  def call(env)
    @@items = []
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      resp.write
  end
end

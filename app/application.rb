class Application

  def call(env)
    @@items = []

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      req.path
    else
      resp.write "Item not found"
      resp.status = 404
    end
    res.finish
  end
end

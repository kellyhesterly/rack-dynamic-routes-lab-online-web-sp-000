class Application

  def call(env)
    @@items = []

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path == "/testing"
      resp.write "Route not found"
      resp.status = 404
    end

    if req.path =="/items"
      @@items.each do |item|
        resp.write "#{item.price}\n"
    else
      resp.write "Item not found"
      resp.status = 404
    end
    resp.finish
  end
end

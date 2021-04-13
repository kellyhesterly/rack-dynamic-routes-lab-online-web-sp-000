class Application
    attr_accessor :item, :price

  def initialize
    @item = item
    @price = price
  end

  def call(env)
    @@items = []

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      resp.write
    else
      resp.write "Item not found"
      resp.status = 404
  end
end

class Application
    attr_accessor :item, :price

  def initialize
    @item = item
    @price = price
    @@item << self
  end

  def call(env)
    @@items = []

    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path =="/items"
      resp.write
  end
end

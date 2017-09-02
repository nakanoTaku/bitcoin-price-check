class HomeController < ApplicationController
  def index
  end

  def serch
    @bitcoin = Bitcoin.new
    @bitcoin.name = params[:bitcoin][:name]

    if @bitcoin.name == "All"

    else
      @bitcoin.price = get_price(@bitcoin.name)
      render 'serch'
    end
  end

  private

  def get_price(select_bitcoin)
    uri = URI.parse("https://api.bitflyer.jp")
    uri.path = '/v1/getboard'
    uri.query = '"product_code": ' + select_bitcoin

    https = Net::HTTP.new(uri.host, uri.port)
    https.use_ssl = true
    response = https.get uri.request_uri
    response_hash = JSON.parse(response.body)
    response_hash["mid_price"]
  end
end

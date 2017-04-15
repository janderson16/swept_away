class BostonService
  attr_reader :connection
              :auth

  def initialize
    @connection = Faraday.new("https://data.cityofboston.gov/resource/755x-x44q.json")
    @auth = "&$$app_token=#{ENV["Boston_app"]}"
  end

  def first_mon
    # binding.pry
    parse(connection.get("?week1=true&monday=true#{@auth}"))
  end

  private

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

end

require "faker"
require 'httparty'

class PixabayService
  BASE_URL = 'https://pixabay.com/api/'
  API_KEY = '37588231-0e4cb177e10271dd1681ef310'

  def self.random_pigeon_image
    url = "#{BASE_URL}?key=#{API_KEY}&q=pigeon&image_type=photo&safesearch=true"
    response = HTTParty.get(url)
    if response.code == 200
      json_response = JSON.parse(response.body)
      hits = json_response['hits']
      random_hit = hits.sample
      random_hit['webformatURL']
    else
      ''
    end
  end
end
puts "Cleaning up database..."
Pigeon.destroy_all
puts "Database cleaned"

10.times do
  Pigeon.create(
    name: Faker::Creature::Bird.common_family_name,
    color: Faker::Creature::Bird.color,
    descriptif: Faker::Creature::Bird.order,
    rating: (1..5).to_a.sample,
    price: (100..10000).to_a.sample,
    image_url: PixabayService.random_pigeon_image
  )
end

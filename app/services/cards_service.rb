# app/services/cards_service.rb
require 'rest-client'

class CardsService
    BASE_URL = 'https://tarot-api-3hv5.onrender.com/api/v1/cards/random?n=10'.freeze
  
    def self.fetch_cards
      response = RestClient.get(BASE_URL)
      JSON.parse(response.body)['cards']
    rescue RestClient::ExceptionWithResponse => e
      Rails.logger.error("Failed to fetch cards: #{e.response}")
      []
    end
  end
  
# app/controllers/cards_controller.rb
class CardsController < ApplicationController
  def index
    @cards = CardsService.fetch_cards
  end
end

require_relative './card'

# all cards
class Deck
  attr_accessor :generated_cards

  def initialize
    @generated_cards = []
    generate_cards
  end

  # generate cards
  def generate_cards
    Card.card_values.each do |value|
      Card.card_suit.each do |suit|
        card = "#{value} - #{suit}"
        card_toggle = Card.new(card)
        @generated_cards << card_toggle
      end
    end
    @generated_cards.shuffle!
  end

  def give_card
    @generated_cards.pop
  end
end

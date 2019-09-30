require 'pry'

class Deck

    attr_accessor :cards

    @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]

    def initialize
        @cards = 
            @@suit.map do |suit|
                @@rank.map do |rank|
                Card.new(suit, rank)
                end
            end.flatten
    end
    
    def choose_card
        cards.delete_at(rand(0..cards.length))
    end

end



class Card

    attr_accessor :rank, :suit
    
    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end
end


Deck.new
require 'pry'
#hello world
#2nd one
class Deck
    attr_reader :cards

    @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @cards = []
        @@suit.each{|suit|
            @@rank.each{|rank|
                @cards << Card.new(suit, rank)}}
    end


    # def initialize  ## my method
    #     @cards = []
    #     @@suit.each{|suit|
    #         @@rank.each{|rank|
    #             @cards << Card.new(suit, rank)}}
    # end

    def choose_card
        #self.cards.delete(self.cards[rand(1..self.cards.length)])
        cards.delete_at(rand(0..cards.length))
        #binding.pry
    end

end

class Card

    attr_accessor :suit, :rank

    def initialize(suit, rank)
        @suit = suit
        @rank = rank
    end

end
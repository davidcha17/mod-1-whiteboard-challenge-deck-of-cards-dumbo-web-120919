# class Card
#     attr_accessor :rank, :suit
   
#     def initialize(rank, suit)
#       @rank = rank
#       @suit = suit
#     end
   
#     def output_card
#       puts "The #{@rank} of #{@suit}"
#     end
#   end
# end
   
# class Deck
#     def initialize
#       @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
#       @suits = ['♣', '♥', '♠', '♦']
#       @cards = []
   
#       @ranks.each do |rank|
#         @suits.each do |suit|
#           @cards << Card.new(rank, suit)
#         end
#       end
#     end
# end
class Deck
    attr_reader :cards
  
    def initialize
      @cards = []
      for suit in ["Hearts", "Clubs", "Diamonds", "Spades"] do
        for rank in ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"] do
          @cards << Card.new(suit, rank)
        end
      end
    end
  
    def choose_card
      @cards.delete_at(rand(@cards.length))
    end
  end
  
  class Card
    attr_reader :rank, :suit
  
    def initialize(suit, rank)
      @rank = rank
      @suit = suit
    end
end
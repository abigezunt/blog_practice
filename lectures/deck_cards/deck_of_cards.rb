class Deck
	def initialize
		@cards = []
		@cards << Card.new("Hearts", "Ace")
		@cards << Card.new("Hearts", "King")
		@cards << Card.new("Hearts", "Queen")
		@cards << Card.new("Hearts", "Jack")
		@cards << Card.new("Hearts", "10")
		@cards << Card.new("Hearts", "9")
		@cards << Card.new("Hearts", "8")
		@cards << Card.new("Hearts", "7")
		@cards << Card.new("Hearts", "6")
		@cards << Card.new("Hearts", "5")
		@cards << Card.new("Hearts", "4")
		@cards << Card.new("Hearts", "3")
		@cards << Card.new("Hearts", "2")
		@cards << Card.new("Hearts", "1")
		@cards << Card.new("Spades", "Ace")
		@cards << Card.new("Spades", "King")
		@cards << Card.new("Spades", "Queen")
		@cards << Card.new("Spades", "Jack")
		@cards << Card.new("Spades", "10")
		@cards << Card.new("Spades", "9")
		@cards << Card.new("Spades", "8")
		@cards << Card.new("Spades", "7")
		@cards << Card.new("Spades", "6")
		@cards << Card.new("Spades", "5")
		@cards << Card.new("Spades", "4")
		@cards << Card.new("Spades", "3")
		@cards << Card.new("Spades", "2")
		@cards << Card.new("Spades", "1")
		@cards << Card.new("Diamonds", "Ace")
		@cards << Card.new("Diamonds", "King")
		@cards << Card.new("Diamonds", "Queen")
		@cards << Card.new("Diamonds", "Jack")
		@cards << Card.new("Diamonds", "10")
		@cards << Card.new("Diamonds", "9")
		@cards << Card.new("Diamonds", "8")
		@cards << Card.new("Diamonds", "7")
		@cards << Card.new("Diamonds", "6")
		@cards << Card.new("Diamonds", "5")
		@cards << Card.new("Diamonds", "4")
		@cards << Card.new("Diamonds", "3")
		@cards << Card.new("Diamonds", "2")
		@cards << Card.new("Diamonds", "1")
	end

	def cards
		@cards
	end

	def draw_card
		@cards[rand(1..@cards.length)]
	end

	def chaos_orb
		c = draw_card
		@cards.delete(c)
		return c
	end

	def length
		@cards.length
	end

	def shuffle
		@cards.shuffle!
	end
end

class Card
	attr_accessor :suit, :value

	def initialize(suit, value)
		@made_of = "paper"
		@made_in = "China"
		@suit = suit
		@value = value
	end

	def color
		if @suit == "hearts" || @suit == "diamonds"
			return "red"
		else
			return "black"
		end
	end
end

d = Deck.new
puts d.length
puts d.chaos_orb
puts d.shuffle
puts d.draw_card
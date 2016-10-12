class Card
    attr_accessor :face,
                  :suit,
                  :value
    def initialize
        self.face = face
        self.suit = suit
        self.value = value
    end
    def suit
        %w(hearts clubs diamonds spades)
    end

    def face
      %w(2 3 4 5 6 7 8 9 10 J Q K A)
    end
    def value
        %w(2 3 4 5 6 7 8 9 10 11 12 13 14)
    end

    suit = %w(hearts clubs diamonds spades)

    face = %w(2 3 4 5 6 7 8 9 10 J Q K A)

    def face_value
      if
        face == "A"
        self.value = 14
        elsif
          face== "K"
        self.value = 13
      elsif
        face == "Q"
        self.value = 12
      elsif
        face == "J"
        self.value = 11
      else
        self.value = face_to.i
      end
    end

end

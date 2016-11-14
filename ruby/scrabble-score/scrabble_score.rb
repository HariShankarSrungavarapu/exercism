class Scrabble

  def initialize(word)
    @word = word
  end

  def score
    scrabble_score = 0
    @word = @word.to_s  
    @word = @word.gsub("\t",' ' ).gsub("\n", ' ').delete(' ')
    @word.upcase!
    @word.split("").each do |i|
      scrabble_score += scrabble_values[i]
    end
    scrabble_score
  end

  def self.score(word)
    Scrabble.new(word).score
  end

  def scrabble_values
    {
      "A" => 1,
      "B" => 3,
      "C" => 3,
      "D" => 2,
      "E" => 1,
      "F" => 4,
      "G" => 2,
      "H" => 4,
      "I" => 1,
      "J" => 8,
      "K" => 5,
      "L" => 1,
      "M" => 3,
      "N" => 1,
      "O" => 1,
      "P" => 3,
      "Q" => 10,
      "R" => 1,
      "S" => 1,
      "T" => 1,
      "U" => 1,
      "V" => 4,
      "W" => 4,
      "X" => 8,
      "Y" => 4,
      "Z" => 10
    }
  end
  
end
class Player
  attr_reader :name, :sign
  def initialize(name, sign)
    @name = name
    @sign = sign
  end

  def select_move
    puts "#{name}, pick a space by specifying the letter and number, ie: A1."
    gets.downcase.chomp
  end
end

class Board
# You should put here the given boards templates
# @@boards_templates =  
	
	attr_reader :tablero
  def initialize(tablero)
  	@tablero = tablero
     complete_board!
  end

  def to_s
  	array = @tablero.split("")
  	array.each_slice(8)  {|a| p a}  
  end

  private

	  def complete_board!
	    #Este método debe rellenar un tablero incompleto, en otras palabras cambiar las "x" por letras random.
	    abecedario = ('A'..'Z').to_a
	    @tablero.gsub!("X") { abecedario.sample }
	  end
end

tablero = "POEMAXCXXXXAXXSXNXAAXCMXDXIXXNROXXOXNXXR"
board = Board.new(tablero)
puts board
puts board.tablero












# array = tablero.split("")
# palabras = ["POEMA", "CANCION", "RONDAS", "RIMAS"]
# def imprimir_tablero(tablero)
# 	tablero.each_slice(8)  {|a| p a}   
# end
# p imprimir_tablero(array)




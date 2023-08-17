class Jugador
  attr_reader :nombre, :inventario

  def initialize(nombre)
    @nombre = nombre
    @inventario = []
  end

  def agregar_item(item)
    @inventario << item
  end

  def mostrar_inventario
    puts "Inventario de #{@nombre}:"
    @inventario.each do |item|
      puts "- #{item}"
    end
  end

  def jugar
    puts "¡Bienvenido a la aventura, #{@nombre}!"
    puts "Encuentras una espada. ¿Quieres agregarla a tu inventario? (s/n)"
    respuesta = gets.chomp.downcase
    if respuesta == "s"
      agregar_item("espada")
    end
    puts "¡La aventura ha terminado, #{@nombre}!"
  end
end

# Crear un jugador
puts "Ingresa tu nombre:"
nombre_jugador = gets.chomp
jugador = Jugador.new(nombre_jugador)
jugador.jugar
jugador.mostrar_inventario
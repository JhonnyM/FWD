require_relative '../lib/jugador'

describe Jugador do
  let(:jugador) { Jugador.new("Nombre") }

  it "debería tener un nombre" do
    expect(jugador.nombre).to eq("Nombre")
  end

  it "debería poder agregar ítems al inventario" do
    jugador.agregar_item("espada")
    expect(jugador.inventario).to include("espada")
  end
end
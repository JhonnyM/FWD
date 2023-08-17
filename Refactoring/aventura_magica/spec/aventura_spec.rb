require_relative '../lib/jugador'
require_relative '../lib/aventura'
require 'stringio'

describe Aventura do
  let(:jugador) { Jugador.new("Nombre") }
  let(:aventura) { Aventura.new(jugador) }

  before do
    allow($stdout).to receive(:puts)
  end

  it "debería permitir al jugador agregar un ítem" do
    input = StringIO.new("s\n")
    allow_any_instance_of(Object).to receive(:gets).and_return(input.gets)
    aventura.iniciar
    expect(jugador.inventario).to include("espada")
  end
end
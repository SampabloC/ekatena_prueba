class MainController < ApplicationController

  # agregar a la base de datos la información de los juicios
  def index
    @juicio = Juicio.all
  end

  def create
    @juicio = Juicio.new(juicio_params)
    @juicio.save
  end

  def update
    @juicio = Juicio.find(params[:id])
    @juicio.update(juicio_params)
  end

  private

    def juicio_params
      params.require(:juicio).permit(:actor, :demandado, :expediente, :notificaciones, :resumen, :juzgado)
    end
end

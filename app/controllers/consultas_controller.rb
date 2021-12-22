class ConsultasController < ApplicationController

  skip_before_action :verify_authenticity_token
  before_action :login

  def get_data
    response = HTTParty.get('https://www.poderjudicialvirtual.com/mn-banco-santander-mexico-s-a--banco-santander-mexico')
    render plain: response, content_type: "application/html"
  end

  def test
    response = RestClient.get('https://www.poderjudicialvirtual.com')
    render plain: response, content_type: "application/html"
  end

  def login
    response = HTTParty.post('https://www.poderjudicialvirtual.com/entrar', login_params)
  end

  def buscador
    result = HTTParty.get('https://www.poderjudicialvirtual.com/buscar-nuevos-expedientes')
    render plain: result, content_type: "application/html"
  end

  def buscador_consulta
    result = HTTParty.post('https://www.poderjudicialvirtual.com/buscar-nuevos-expedientes', consulta_params)
    render plain: result, content_type: "application/html"
  end

  private

    def login_params
      params.permit(:lgnemail, :lgnpassword)
    end

    def consulta_params
      params.permit(:pnlPartesNombre)
    end
end

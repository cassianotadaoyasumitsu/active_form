class FamiliasController < ApplicationController
  before_action :find_cadastro, except: [:destroy]

  def new
    @famila = Famila.new
  end

  def create
    @famila = Famila.new(famila_params)
    @famila.cadastro = @cadastro
    if @famila.save
      redirect_to cadastro_path(@cadastro)
    else
      render :new
    end
  end

  def destroy
    @famila = Famila.find(params[:id])
    @cadastro = @famila.cadastro_id
    @famila.destroy
    redirect_to cadastro_path(@famila.cadastro)
  end

  private

  def find_cadastro
    @cadastro = Cadastro.find(params[cadastro_id])
  end

  def famila_params
    params.require(:famila).permit(
      :nome_familia, :parentesco, :idade_familia,
      :mora_junto, :dependente, :cadastro_id
      )
end

class EmpresasController < ApplicationController
  before_action :find_cadastro, except: [:destroy]

  def new
    @empresa = Empresa.new
  end

  def create
    @empresa = Empresa.new(empresa_params)
    @empresa.cadastro = @cadastro
    if @empresa.save
      redirect_to cadastro_path(@cadastro)
    else
      render :new
    end
  end

  def destroy
    @empresa = Empresa.find(params[:id])
    @cadastro = @empresa.cadastro_id
    @empresa.destroy
    redirect_to cadastro_path(@empresa.cadastro)
  end

  private

  def find_cadastro
    @cadastro = Cadastro.find(params[cadastro_id])
  end

  def empresa_params
    params.require(:empresa).permit(
      :tempo_empresa_anos, :tempo_empresa_meses, :nome_empresa, :local_trabalho,
      :tipo_servico, :colocacao, :empreiteira, :motivo_saida, :cadastro_id
      )
end

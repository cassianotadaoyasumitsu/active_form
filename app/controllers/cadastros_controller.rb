class CadastrosController < ApplicationController
  def index
    @cadastros = Cadastro.all
  end

  def show
    @cadastro = Cadastro.find(params[:id])
  end

  def new
    @cadastro = Cadastro.new
  end

  def create
    @cadastro = Cadastro.new(cadastro_params)
    if @cadastro.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @cadastro = Cadastro.find(params[:id])
  end

  def update
    @cadastro = Cadastro.find(params[:id])
    if @cadastro.update(cadastro_params)
      redirect_to cadastro_path(@cadastro)
    else
      render :edit
    end
  end

  def destroy
    @cadastro = Cadastro.find(params[:id])
    @cadastro.destroy
    redirect_to root_path
  end

  private

  def cadastro_params
    params.require(:cadastro).permit(
      :data_cadastro, :katakana, :nome, :nascimento, :idade, :genero, :conjuge,
      :nacionalidade, :descendencia, :descendencia_outros, :telefone, :endereco,
      :mudanca, :moradia, :zairyu_card, :zairyu_card_validade, :tempo_japao_anos,
      :tempo_japao_meses, :visto, :escolaridade, :escolaridade_status, :blusa,
      :cintura, :calcado, :altura, :saude, :enfermidade, :alergia, :tipo_alergia,
      :tipo_sanguineo, :uso_lentes, :comunicacao, :compreensao, :kana_leitura,
      :kana_escrita, :hira_leitura, :hira_escrita, :kanji_leitura, :kanji_escrita,
      :carteira_motorista, :carro, :kensa, :kensa_lupa, :microscopio, :montagem,
      :solda, :operador_maquina, :solda_branca, :habilidades_outros, :horas_extras,
      :feriados, :turnos, :folgas_irregulares, :procedencia, :empresa_id, :familia_id
      )
  end
end

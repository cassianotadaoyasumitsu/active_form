class Cadastro < ApplicationRecord
  has_many :empresas, dependent: :destroy
  has_many :familias, dependent: :destroy
end

class Author < ApplicationRecord
  has_many :books

  validates_presence_of :name, message: "O nome não pode ser vazio"
  validates_presence_of :birthdate, message: "A data de nascimento não pode ser vazio"
  # validates_uniqueness_of :name, message: "O autor já foi cadastrado"
end

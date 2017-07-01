# class String
#   def inicial_maiscula?
#     self[0] == self[0].upcase
#   end
# end

class Book < ApplicationRecord
  belongs_to :author

  validates_presence_of :title, message: "Não pode ser vazio"
  
  #  validates_length_of :title, in: 5..50,  message: "Deve possuir entre 5 a 50 caracteres"
  #  validate :primeira_letra_maiscula

  # def primeira_letra_maiscula
  #   unless title.inicial_maiscula?
  #     errors.add(:title, "Primeira letra não pode ser miniscula ")
  #   end
  #   return
  # end
end

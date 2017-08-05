# class String
#   def inicial_maiscula?
#     self[0] == self[0].upcase
#   end
# end

class Book < ApplicationRecord
  belongs_to :author

  validates_presence_of :title, message: "Não pode ser vazio"

  mount_uploader :cover, CoverUploader

end

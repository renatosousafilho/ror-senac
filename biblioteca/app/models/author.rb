class Author < ApplicationRecord
  has_many :books

  validates_presence_of :name, :birthdate
  validates_uniqueness_of :name
end

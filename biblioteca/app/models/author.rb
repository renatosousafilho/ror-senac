class Author < ApplicationRecord
  has_many :books

  attr_reader :gender

  validates_presence_of :name, :birthdate
  validates_uniqueness_of :name
end

module BookingsHelper
  def options_to_book
    Book.all.map { |b| [b.title, b.id] }
  end

  def options_to_user
    User.all.map { |u| [u.email, u.id] }
  end
end

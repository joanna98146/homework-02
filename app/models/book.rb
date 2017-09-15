class Book < ApplicationRecord
  has_many :authorships
  has_many :authors, through: :authorships
    
  def self.search(query_term)
    if query_term.present?
      query_string = "title ILIKE ? OR author ILIKE ? OR classification ILIKE ? OR genre ILIKE ? OR book_type ILIKE ?"
      Book.where(query_string, "%#{query_term}%" ,"%#{query_term}%" ,"%#{query_term}%" ,"%#{query_term}%" ,"%#{query_term}%") 
    else
      Book.all
    end
  end
end
 
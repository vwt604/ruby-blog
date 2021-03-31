class Article < ActiveRecord::Base
  has_many :comments # associating with comments db
  validates :title, presence: true,
                    length: { minimum: 5 }
end

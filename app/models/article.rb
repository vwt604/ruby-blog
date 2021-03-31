class Article < ActiveRecord::Base
  validates :title, presence: true,
                    length: { minumum: 5 }
end

class Article < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  validates :title, presence: true, length: { minimum: 3, maximum: 60 }
  validates :description, presence: true, length: { minimum: 10, maximum: 400 }
  validates :user_id, presence: true

end
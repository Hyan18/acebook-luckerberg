class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  # belongs_to :wall
  # delegate :name, :to => :user
end

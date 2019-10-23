# frozen_string_literal: true

class Post < ApplicationRecord
  belongs_to :user
  has_many :comment
  validates :title, presence: true, length: { minimum: 2, maximum: 20 }
  validates :body, presence: true, length: { minimum: 2, maximum: 1000 }
end

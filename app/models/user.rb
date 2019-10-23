# frozen_string_literal: true

class User < ApplicationRecord
   has_many :post
	 has_many :comment
	 validates :name, length: { minimum: 3 }, presence: true, uniqueness: true
	 validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
end

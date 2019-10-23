class User < ApplicationRecord
	validates :name, length: { minimum: 3 }, presence: true, uniqueness: true
	validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true 
end

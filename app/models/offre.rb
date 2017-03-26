class Offre < ApplicationRecord
	has_many :stes
	has_many :otes
    has_many :users, through: :stes
    has_many :users, through: :otes
end

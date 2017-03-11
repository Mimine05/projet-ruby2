class Interet < ApplicationRecord
    has_many :itus
	has_many :users, through: :itus
end

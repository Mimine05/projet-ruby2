class Formation < ApplicationRecord
    has_many :ftus
	has_many :users, through: :ftus
end

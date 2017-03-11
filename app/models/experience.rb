class Experience < ApplicationRecord
    has_many :etus
	has_many :users, through: :etus
end

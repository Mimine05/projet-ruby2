class Secteur < ApplicationRecord
    has_many :stes
    has_many :users, through: :stes
end

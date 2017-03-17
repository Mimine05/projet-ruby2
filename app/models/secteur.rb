class Secteur < ApplicationRecord
    has_many :stes
    has_many :entreprises, through: :stes
end

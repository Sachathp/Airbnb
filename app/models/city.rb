class City < ApplicationRecord
    has_many :dogssitters
    has_many :dogs
end

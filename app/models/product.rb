class Product < ApplicationRecord
    has_many :admin
    validates :name, presence: true
    validates :description, presence: true, length: { minimum: 10 }
end

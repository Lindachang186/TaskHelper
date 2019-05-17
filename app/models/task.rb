class Task < ApplicationRecord
    has_many :statuses 
    has_many :users, through: :statuses

    accepts_nested_attributes_for :statuses
    validates_associated :statuses

end

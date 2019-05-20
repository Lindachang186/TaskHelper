class User < ApplicationRecord
    has_secure_password
    has_many :tasks 
    has_many :statuses, through: :tasks 

    validates :name, presence: true, uniqueness: true
end

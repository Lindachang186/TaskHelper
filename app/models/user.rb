class User < ApplicationRecord
    has_many :tasks 
    has_many :statuses, through: :tasks 
end

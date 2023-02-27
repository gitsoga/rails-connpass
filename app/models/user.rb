class User < ApplicationRecord
    has_many :event
    
    has_many :join_event
    has_many :event, through: :join_event
end

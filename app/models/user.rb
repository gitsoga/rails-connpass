class User < ApplicationRecord
    has_many :events
    has_many :events, through: :join_events
end

class Event < ApplicationRecord
    belongs_to :users, foreign_key: 'create_user_id'
    has_many :users, through: :join_events
end

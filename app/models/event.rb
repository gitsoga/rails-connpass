class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'create_user_id'

  has_many :join_event
  has_many :user, through: :join_event
end

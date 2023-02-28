class Event < ApplicationRecord
  belongs_to :user, foreign_key: 'create_user_id', optional: true

  has_many :join_event
  has_many :user, through: :join_event

  validates :name, presence: true, length: { maximum: 255 }
  validates :create_user_id, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validates :content, presence: true, length: { maximum: 65_535 }

  # validate :start_finish_check
  # validate :start_check

  # def start_finish_check
  #   errors.add(:end_at, 'は開始時刻より遅い時間を選択してください') if start_at > end_at
  # end

  # def start_check
  #   errors.add(:start_at, 'は現在の日時より遅い時間を選択してください') if start_at < Time.now
  # end
end

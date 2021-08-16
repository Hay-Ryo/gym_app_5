class Schedule < ApplicationRecord
  belongs_to :user
  validates :content, :title, presence: true, on: :create

  validates :content, presence: true, on: :update
  validates :title, presence: true, on: :update

  paginates_per 3
end

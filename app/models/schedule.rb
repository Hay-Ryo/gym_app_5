class Schedule < ApplicationRecord
  belongs_to :user
  validates :content, :title, presence: true, on: :create

  paginates_per 3
end

class Task < ApplicationRecord
  belongs_to :user
  has_many :likes, dependent: :destroy
  validates :content, presence: true
  # validates_uniqueness_of :task_id, scope: :user_id

end

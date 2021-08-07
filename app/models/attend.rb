class Attend < ApplicationRecord
	belongs_to :user

	paginates_per 5

  validate :check_business_hours

	def non_business_hours 
    Time.current.beginning_of_day..Time.current.beginning_of_day.15.hours
	end

	def check_business_hours
		if Attend.where(created_at: non_business_hours)
			errors[:base] <<  "営業時間ではありません"
		end
	end 
end

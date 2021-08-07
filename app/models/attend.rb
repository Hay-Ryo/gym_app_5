class Attend < ApplicationRecord
	belongs_to :user

	paginates_per 5

  validate :check_business_hours

	def non_business_hours 
    Time.current.beginning_of_day..Time.current.since(16.hour)
	end

	def check_business_hours
		if Attend.where(start_time: non_business_hours)
			redirect_to root_path, flash: {msg: "営業時間外です"}
		end
	end 
end

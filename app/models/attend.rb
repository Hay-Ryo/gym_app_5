class Attend < ApplicationRecord
	belongs_to :user

	paginates_per 5

  # validate :check_business_hours

	# def non_business_hours 
  #   Time.current.beginning_of_day..Time.current.beginning_of_day.since(20.hour)
	# end

	# def check_business_hours
	# 	# Attend.where(created_at: Time.current.beginning_of_day..Time.current.beginning_of_day.since(20.hour))
	# 	num = Time.strftime('%H%M').to_i
  # [*0..1500, *2300..2359].include?(num)
	# 	flash[:msg]= "営業時間外です"
	# end 
end

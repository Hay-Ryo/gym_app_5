class Attend < ApplicationRecord
	belongs_to :user

	paginates_per 5

end

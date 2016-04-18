class Userdetail < ActiveRecord::Base
	belongs_to :cluster
	belongs_to :typeofuser
	belongs_to :mcluster

	def self.search(search)
		
		if search.present?
			keyword = search
			split = keyword.split(" ")
			if split.to_a.count > 1
			where("first_name iLike :q or middle_name iLike :q ", q: split[0],  q: split[1]) 
			else
				where("first_name iLike :q ", q: split[0])
			end
		else
			all
		end

	end

end

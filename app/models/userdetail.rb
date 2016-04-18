class Userdetail < ActiveRecord::Base
	belongs_to :cluster
	belongs_to :typeofuser
	belongs_to :mcluster

	def self.search(search)
		
		if search.present?
			keyword = search
			split = keyword.split(" ")
			if split.to_a.count >= 1
				where("first_name @@ :q ", q: split[0])	
			elsif split.to_a.count >= 1
				where("first_name @@ :q or middle_name @@ :q ", q: split[0], q: split[1])
			elsif split.to_a.count >= 1
				where("first_name @@ :q or middle_name @@ :q or last_name @@ :q", q: split[0],  q: split[1], q: split[2]) 
				
			end
		else
			all
		end

	end

end

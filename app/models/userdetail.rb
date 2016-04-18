class Userdetail < ActiveRecord::Base
	belongs_to :cluster
	belongs_to :typeofuser
	belongs_to :mcluster

	def self.search(search)
			a = where("first_name @@ :q ", q: search)
			b = where("middle_name @@ :q ", q: search)
			c = where("last_name @@ :q ", q: search)

		if search.present?
			keyword = search
			split = keyword.split(" ")
			if a.to_a.count == 1
				where("first_name @@ :q ", q: search)
			elsif b.to_a.count == 1
				where("middle_name @@ :q ", q: search)
			elsif c.to_a.count == 1
				where("last_name @@ :q ", q: search)
			elsif split.to_a.count >= 1
				where("first_name @@ :q or middle_name @@ :q ", q: split[0], q: split[1])
			elsif split.to_a.count >= 1
				where("first_name @@ :q or middle_name @@ :q or last_name @@ :q", q: split[0],  q: split[1], q: split[2]) 
			else
				a
			end
			#keyword = search
			#split = keyword.split(" ")
			#if split.to_a.count >= 1
			#	where("first_name @@ :q ", q: split[0])	
			#elsif split.to_a.count >= 1
			#	where("first_name @@ :q or middle_name @@ :q ", q: split[0], q: split[1])
			#elsif split.to_a.count >= 1
			#	where("first_name @@ :q or middle_name @@ :q or last_name @@ :q", q: split[0],  q: split[1], q: split[2]) 
			#	else
			#		all
			#end
		else
			all
		end

	end

end

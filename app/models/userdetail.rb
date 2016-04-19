class Userdetail < ActiveRecord::Base
	belongs_to :cluster
	belongs_to :typeofuser
	belongs_to :mcluster

	def self.search(search)

		if search.present?
			where("CONCAT_WS(' ', first_name, middle_name, last_name) @@ :q", q: "%#{search}%")
		else
			all
		end

	end

end

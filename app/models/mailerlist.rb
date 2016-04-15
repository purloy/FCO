class Mailerlist < ActiveRecord::Base
	belongs_to :mailertype
	belongs_to :mailername
end

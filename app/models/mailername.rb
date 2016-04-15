class Mailername < ActiveRecord::Base
	has_many :mailerlists
	has_many :reports
end

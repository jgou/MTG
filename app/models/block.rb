class Block < ActiveRecord::Base
	has_many :expansions
	validate_presence_of :name
end

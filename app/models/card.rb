class Card < ActiveRecord::Base
	has_one :inventory
	validate_presence_of :name
end

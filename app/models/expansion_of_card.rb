class ExpansionOfCard < ActiveRecord::Base
	has_and_belongs_to_many :cards
	has_and_belongs_to_many :extensions
end

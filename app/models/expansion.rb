class Expansion < ActiveRecord::Base
	belongs_to :block
	validate_presence_of :name
end

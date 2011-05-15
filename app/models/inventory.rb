class Inventory < ActiveRecord::Base
	belongs_to :card
	validate_presence_of :name
	validates_numericality_of :copies, :message=>"Error Message"
end

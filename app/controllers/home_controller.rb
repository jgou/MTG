class HomeController < ApplicationController
	layout 'standard'

  def index
		@cards = Card.find(:all, :include => :inventory)
		@inventories = Inventories.all
  end

	def add
		@cards = Card.find(params[:id])
		@cards		
	end
end

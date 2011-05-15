class HomeController < ApplicationController
  def index
	@cards = Card.find(:all, :include => :inventory)
  end
end

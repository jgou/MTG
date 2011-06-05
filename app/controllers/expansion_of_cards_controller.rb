class ExpansionOfCardsController < ApplicationController
	layout 'standard'

  # GET /expansion_of_cards
  # GET /expansion_of_cards.xml
  def index
    @expansion_of_cards = ExpansionOfCard.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @expansion_of_cards }
    end
  end

  # GET /expansion_of_cards/1
  # GET /expansion_of_cards/1.xml
  def show
    @expansion_of_card = ExpansionOfCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @expansion_of_card }
    end
  end

  # GET /expansion_of_cards/new
  # GET /expansion_of_cards/new.xml
  def new
    @expansion_of_card = ExpansionOfCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @expansion_of_card }
    end
  end

  # GET /expansion_of_cards/1/edit
  def edit
    @expansion_of_card = ExpansionOfCard.find(params[:id])
  end

  # POST /expansion_of_cards
  # POST /expansion_of_cards.xml
  def create
    @expansion_of_card = ExpansionOfCard.new(params[:expansion_of_card])

    respond_to do |format|
      if @expansion_of_card.save
        flash[:notice] = 'ExpansionOfCard was successfully created.'
        format.html { redirect_to(@expansion_of_card) }
        format.xml  { render :xml => @expansion_of_card, :status => :created, :location => @expansion_of_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @expansion_of_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /expansion_of_cards/1
  # PUT /expansion_of_cards/1.xml
  def update
    @expansion_of_card = ExpansionOfCard.find(params[:id])

    respond_to do |format|
      if @expansion_of_card.update_attributes(params[:expansion_of_card])
        flash[:notice] = 'ExpansionOfCard was successfully updated.'
        format.html { redirect_to(@expansion_of_card) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @expansion_of_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /expansion_of_cards/1
  # DELETE /expansion_of_cards/1.xml
  def destroy
    @expansion_of_card = ExpansionOfCard.find(params[:id])
    @expansion_of_card.destroy

    respond_to do |format|
      format.html { redirect_to(expansion_of_cards_url) }
      format.xml  { head :ok }
    end
  end
end

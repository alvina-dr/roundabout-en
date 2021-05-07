class DecksController < ApplicationController
  def index
    @decks = Deck.all
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = Card.where(deck_id: @deck.id)
  end

  #CREATE ----------------------------
  def new
    @deck = Deck.new
  end

  def create
    @deck = Deck.new(deck_params) 

    if @deck.save
      redirect_to @deck
    else
      render :new
    end
  end

 #EDIT ----------------------------
  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])

    if @deck.update(deck_params)
      redirect_to @deck
    else
      render :edit
    end
  end

   #DELETE ----------------------------
   def destroy
    @deck = Deck.find(params[:id])
    @deck.destroy

    redirect_to root_path
  end

  private
  def deck_params
    params.require(:deck).permit(:title, :url)
  end
  
end

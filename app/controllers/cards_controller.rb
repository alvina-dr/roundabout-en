class CardsController < ApplicationController
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  #CREATE ----------------------------
  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params) 

    if @card.save
      redirect_to @card
    else
      render :new
    end
  end

 #EDIT ----------------------------
  def edit
    @card = Card.find(params[:id])
  end

  def update
    @card = Card.find(params[:id])

    if @card.update(card_params)
      redirect_to @card
    else
      render :edit
    end
  end

   #DELETE ----------------------------
   def destroy
    @card = Card.find(params[:id])
    @card.destroy

    redirect_to root_path
  end

  private
  def card_params
    params.require(:card).permit(:title, :number, :summary, :content, :url, :deck_id)
  end
  
end

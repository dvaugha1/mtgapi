class CardsController < ApplicationController
before_action :authenticate_user_from_token! , :only => [:create]

def create
	@card = Card.new(card_params)
	if @card.save
		render json: { card: @card }, status: :created
	else
		render json: { messages: @card.errors.full_messages },
					   status: :unprocessable_entity
	end
end

def show
	@card = Card.find(params[:id])
	render json: { card: @card }
end

def list
	@card = Card.all
	render json: { card: @card }
end


private
	def card_params
		params.require(:card).permit(:name, :kind, :edition,
									 :rarity, :artist, :rule,
									 :flavor, :mana, :attack,
									 :toughness)
	end

end
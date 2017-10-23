class PokemonController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_path
	end
	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		trainer_id = pokemon.trainer_id
		if pokemon.health <= 0
			pokemon.destroy
		else
			pokemon.save
		end
		redirect_to trainer_path(trainer_id)
	end
	def new
		@pokemon = Pokemon.new()	
	end		
	def create
		@pokemon = Pokemon.new(health:100,level:1, trainer_id: current_trainer.id)
		@pokemon.update(new_pokemon)
		if @pokemon.save
			redirect_to current_trainer
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			render 'new'
		end

	end

	private
	def new_pokemon
		params.require(:pokemon).permit(:name)
	end

end

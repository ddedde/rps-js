class GamesController < ApplicationController

	def play
	end

	def update_results
  outcome_of_play = params[:outcome]
		result = Result.new
		result.outcome = outcome_of_play
		result.save

		num_wins = Result.where(outcome: "win").count
		num_ties = Result.where(outcome: "tie").count
		num_loses = Result.where(outcome: "lose").count

		render json: {wins: num_wins, ties: num_ties, loses: num_loses, status: :ok}

	end
end

class PlayersController < ApplicationController
    def index
        players = Player.all
        options = {
            include: [:team]
        }
        render json: PlayerSerializer.new(players, options)
    end

    def show
        player = Player.find_by(id: params[:id])
        options = {
            include: [:team]
        }
        render json: PlayerSerializer.new(player, options)
    end

    def create
        player = Player.new(player_params)
        if player.save
            render json: player
        else
            render json: {error: "Failed to add"}
        end
    end

    def player_params
        params.require(:player).permit(:name, :position, :description, :team_id)
    end
end

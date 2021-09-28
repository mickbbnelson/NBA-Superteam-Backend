class PlayersController < ApplicationController
    def index

    end

    def show
        player = Player.find_by(id: params[:id])
        options = {
            include: [:team]
        }
        render json: PlayerSerializer.new(player, options)
    end
end

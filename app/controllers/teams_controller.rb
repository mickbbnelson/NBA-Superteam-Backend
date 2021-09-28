class TeamsController < ApplicationController
    def index
        teams = Team.all
        options = {
            include: [:players]
        }
        render json: TeamSerializer.new(teams)
    end

    def show
        team = Team.find_by(id: params[:id])
        options = {
            include: [:players]
        }
        render json: TeamSerializer.new(team)
    end
end

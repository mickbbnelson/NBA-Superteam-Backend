class TeamsController < ApplicationController
    def index
        teams = Team.all
        options = {
            include: [:players]
        }
        render json: TeamSerializer.new(teams, options)
    end

    def show
        team = Team.find_by(id: params[:id])
        options = {
            include: [:players]
        }
        render json: TeamSerializer.new(team, options)
    end

    def create
        team = Team.new(team_params)
        if team.save
            render json: team
        else
            render json: {error: "Failed to add"}
        end
    end


    private

    def team_params
        params.require(:team).permit(:name)
    end

end

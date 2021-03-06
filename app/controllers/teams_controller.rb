class TeamsController < ApplicationController
    def index
        teams = Team.all
        options = {
            include: [:players]
        }
        render json: TeamSerializer.new(teams, options)
    end

    def create
        team = Team.new(team_params)
        if team.save
            render json: team
        else
            render json: {error: "Failed to add"}
        end
    end


    def destroy
        team = Team.find_by_id(params[:id])
        team.destroy
        render json: {message: "Successfully deleted"}
    end

    private

    def team_params
        params.require(:team).permit(:name)
    end

end

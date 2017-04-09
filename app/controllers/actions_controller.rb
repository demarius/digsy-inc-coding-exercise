class AgentActionsController < ApplicationController
    def new
        @new_action = AgentAction.new
    end
    
    def create
        action = AgentAction.create(params)
        redirect_to new_action_path
    end
end

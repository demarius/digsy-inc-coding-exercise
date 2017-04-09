class AgentActionsController < ApplicationController
    def new
        @new_action = AgentAction.new
        puts @new_action.inspect
    end
    
    def create
        puts "!!!!!!!!!!!!!!!!!!!!!!!!!"
        puts @action
        puts params.inspect
        action = AgentAction.create(params)
        redirect_to new_action_path
    end
end

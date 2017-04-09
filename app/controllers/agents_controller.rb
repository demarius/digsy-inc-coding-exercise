class AgentsController < ApplicationController
  def index
    #get a random action from the service and display.
    @action = ActionService.fetch()
    if !@action.nil?
      ActionService.log(@action, route: 'index', reason: 'Agent viewed action')
    end
  end

  def update
    #if completed, mark action completed
    #call log: completed or ignored
    action = AgentAction.find(params[:id])
    action.update update_params

    ActionService.log(action, route: 'index', reason: 'Agent updated action')
    redirect_to :agents
  end

  def update_params
    params.require(:data).permit(:completed)
  end
end

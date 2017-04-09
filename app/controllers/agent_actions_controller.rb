class AgentActionsController < ApplicationController
  def new
    @new_action = AgentAction.new
  end

  def index
    @actions = AgentAction.all.select{ |a| ActionService.validate(a) }
  end

  def create
    action = AgentAction.create(agent_action_params)
    if action.valid?
      redirect_to agent_actions_path
    else
      @new_action = action
      render :new
    end
  end

  def edit
    @selected_action = AgentAction.find(params[:id])
    ActionService.log(@selected_action, route: 'edit', reason: 'Agent viewing action')
  end

  def update
    action = AgentAction.find(params[:id])
    if ActionService.validate(action) && action.update(agent_action_params)
      redirect_to agent_actions_path
    else
      render :edit
    end
  end
  
  def agent_action_params
    params.require(:agent_action).permit(:icon, :name)
  end
end

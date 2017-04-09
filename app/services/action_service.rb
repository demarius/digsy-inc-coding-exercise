class ActionService
  def self.validate(action)
      puts action.inspect
      !action.name.empty? && !action.icon.empty? && action.icons.include?(action.icon)
  end

  def self.log(action, context)
    Log.create(info: "Action: #{action.id.to_s}, Completed: #{action.completed}, Meta: #{context.inspect}")
  end

  def self.fetch
    AgentAction.where(completed: false).order('RANDOM()').first
  end
end

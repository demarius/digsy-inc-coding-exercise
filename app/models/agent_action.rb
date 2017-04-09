class AgentAction < ActiveRecord::Base
  def icons
    ['import', 'export', 'open', 'bullhorn', 'gift', 'eject', 'book', 'inbox', 'pencil', 'file', 'earphone']
  end
end

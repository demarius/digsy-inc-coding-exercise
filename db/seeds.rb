# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AgentAction.create(
  name: 'Write a letter to the client',
  icon: 'pencil'
)

AgentAction.create(
  name: 'Fax updated documents',
  icon: 'file'
)

AgentAction.create(
  name: 'Call client for updates',
  icon: 'earphone'
)

AgentAction.create(
  name: 'Delete client from directory',
  icon: 'eject'
)

AgentAction.create(
  name: 'Update employee handbook',
  icon: 'book'
)

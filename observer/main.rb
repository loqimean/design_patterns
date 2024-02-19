require_relative "user"
require_relative "team"

user = User.new(name: "John Doe", email: "some@mail.neo")

# teams
financial_team = Team.new("Financial")
marketing_team = Team.new("Marketing")

user.add_observer(financial_team)
user.add_observer(marketing_team)

user.email = "new@mail.us"

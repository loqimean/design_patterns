require_relative "shared/observed"

class User
  attr_reader :id, :name, :email

  include Observed

  def initialize(name:, email:)
    @name  = name
    @email = email
    @id    = rand(1..9999)
    @observers = []
  end

  def email=(atribute)
    old_value = email
    @email    = atribute

    notify_observers(old_value)
  end
end

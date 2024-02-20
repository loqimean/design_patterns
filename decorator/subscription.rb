class Subscription
  attr_reader :name, :duration
  attr_accessor :activated_at

  DURATION = 7

  def initialize(name, duration: nil)
    @name         = name
    @activated_at = Time.now
    @duration     = duration || DURATION
  end
end

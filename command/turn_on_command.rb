class TurnOnCommand
  attr_reader :device, :state

  DEFAULT_STATE = false

  def initialize(device)
    @device = device
    @state = DEFAULT_STATE
  end

  def execute
    @state = true

    puts "#{device} is turned on"
  end

  def undo
    @state = DEFAULT_STATE

    puts "#{device} is turned off"
  end
end

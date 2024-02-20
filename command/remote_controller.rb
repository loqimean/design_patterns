class RemoteController
  attr_reader :commands

  def initialize
    @commands = {}
  end

  def add_command(name, command)
    @commands[name] = command
  end

  def press_button(name)
    command = @commands[name]

    return unless command

    command.execute
  end

  def press_undo_button(name)
    command = @commands[name]

    return unless command

    command.undo
  end

  def state_of(name)
    command = @commands[name]

    return unless command

    command.state
  end
end

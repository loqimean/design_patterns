require_relative "remote_controller"
require_relative "turn_on_command"

light_device = TurnOnCommand.new("light")
tv_device    = TurnOnCommand.new("tv")

remote_controller = RemoteController.new

remote_controller.add_command(:light, light_device)
remote_controller.add_command(:tv, tv_device)

remote_controller.press_button(:light)
remote_controller.press_undo_button(:light)

remote_controller.press_button(:tv)

puts "Current states:"

[:light, :tv].each do |device_name|
  puts "=" * 10

  puts remote_controller.state_of(device_name)

  puts "=" * 10
end

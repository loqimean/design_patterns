class Team
  attr_reader :responsibility

  def initialize(responsibility)
    @responsibility = responsibility
  end

  def update(target, old_value:)
    id    = target.id
    email = target.email
    klass = target.class.to_s

    send_updates_to_api(klass:, id:, email:, old_value:)
  end

  def send_updates_to_api(data = {})
    result = "".tap do |str|
      raise ArgumentError if data.compact.empty?

      str << "#{responsibility}: "
      str << "Email of target with class `#{data[:klass]}' and "
      str << "id #{data[:id]} "
      str << "was changed from #{data[:old_value]} to #{data[:email]}"
    end

    puts result
  end
end

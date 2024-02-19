module Observed
  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers(old_value = nil)
    @observers.each { _1.update(self, old_value:) }
  end
end

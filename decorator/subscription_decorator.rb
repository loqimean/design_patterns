class SubscriptionDecorator
  attr_reader :subscription

  def initialize(subscription)
    @subscription = subscription
  end

  def active?
    duration = 60 * 60 * 24 * subscription.duration

    (subscription.activated_at + duration) > Time.now
  end

  def renew!
    subscription.activated_at = Time.now
  end

  def title
    "Subscription called '#{subscription.name}'"
  end

  def activated_at
    subscription.activated_at
  end
end

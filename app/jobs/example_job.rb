class ExampleJob < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    u = User.find(1)
    u.name = Time.now.strftime("%Y-%m-%d %H:%M:%S")
    u.save
    
    p Time.now.strftime("%Y-%m-%d %H:%M:%S")
  end
end

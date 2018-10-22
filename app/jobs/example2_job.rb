class Example2Job < ApplicationJob
  queue_as :default

  def perform
    # Do something later
    
    main_output
    
    # File.open('/tmp/test1111.txt', 'w') do |text|
    #   text.puts("Hello!")
    # end
    
    # File.open('tmp/test','w') do |file|
    #   text.puts("hello!")
    # end
  end
  
  def main_output
    File.open('/tmp/test1111.txt', 'w') do |text|
      text.puts("Hello!")
    end
  end
end

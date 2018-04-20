class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    puts "#{self.first_name} #{self.last_name} always says: #{self.catchphrase}"
  end
end

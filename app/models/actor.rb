require 'pry'

class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.collect do |character|
      character.name
      binding.pry
    end
    self.shows.collect do |show|
      show.name
    end
    "#{character.name} - #{show.name}"
  end
end

class AddDaysAndSeasonsToShow < ActiveRecord::Migration[4.2]
  class change
    add_column :shows, :day, :string
    add_column :shows, :season, :string
  end
end

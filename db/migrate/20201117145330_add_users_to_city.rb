class AddUsersToCity < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :city, index: true
  end
end

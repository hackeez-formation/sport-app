class CreateUserToSports < ActiveRecord::Migration[6.0]
  def change
    create_table :user_to_sports do |t|
      t.belongs_to :user, index: true
      t.belongs_to :sport, index: true
      t.timestamps
    end
  end
end

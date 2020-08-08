class CreateUsersGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :users_groups do |t|
      t.references :group, foreign_key: true, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end

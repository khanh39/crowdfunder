class CreatePledges < ActiveRecord::Migration[5.0]
  def change
    create_table :pledges do |t|
      t.integer :user_id
      t.integer :project_id
      t.integer :amount

      t.timestamps
    end
  end
end

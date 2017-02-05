class RenameAmount < ActiveRecord::Migration[5.0]
  def change

    rename_column :projects, :amount, :goal_amount
    rename_column :pledges, :amount, :pledged_amount
  end
end

# Method to rename database columns using migrate
